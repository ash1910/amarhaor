<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\RiverRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class RiverCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class RiverCrudController extends CrudController
{
    use \Backpack\CRUD\app\Http\Controllers\Operations\ListOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\CreateOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\UpdateOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\DeleteOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\ShowOperation;

    /**
     * Configure the CrudPanel object. Apply settings to all operations.
     * 
     * @return void
     */
    public function setup()
    {
        CRUD::setModel(\App\Models\River::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/river');
        CRUD::setEntityNameStrings('river', 'rivers');
    }

    /**
     * Define what happens when the List operation is loaded.
     * 
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {
        $this->crud->setHeading('All River\'s Region List');

        CRUD::column('title');
    }

    /**
     * Define what happens when the Create operation is loaded.
     * 
     * @see https://backpackforlaravel.com/docs/crud-operation-create
     * @return void
     */
    protected function setupCreateOperation()
    {
        CRUD::setValidation(RiverRequest::class);
        CRUD::setOperationSetting('contentClass', 'col-md-12 bold-labels');

        CRUD::field('title')
                ->type('text')
                ->label('Page Title')
                ->size(3);

        CRUD::field('header_image')
                ->type('image')
                ->label('Thumb Image')
                ->upload(true)
                ->disk('public')
                ->size(3);

        CRUD::field('content')
                ->type('ckeditor')
                ->label('Description')
                ->options([
                    'filebrowserUploadUrl'=> route('upload', ['_token' => csrf_token() ]),
                    'filebrowserUploadMethod'=> 'form'
                ])
                ->size(6);

        CRUD::field('river_items')
                ->type('table')
                ->label('River List')
                ->columns([
                    'text'  => 'Name'
                ])
                ->size(6);
    }

    /**
     * Define what happens when the Update operation is loaded.
     * 
     * @see https://backpackforlaravel.com/docs/crud-operation-update
     * @return void
     */
    protected function setupUpdateOperation()
    {
        $this->setupCreateOperation();
    }
}
