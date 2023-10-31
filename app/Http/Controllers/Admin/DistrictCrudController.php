<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\DistrictRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class DistrictCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class DistrictCrudController extends CrudController
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
        CRUD::setModel(\App\Models\District::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/district');
        CRUD::setEntityNameStrings('district', 'districts');
    }

    /**
     * Define what happens when the List operation is loaded.
     * 
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {
        $this->crud->setHeading('All District List');

        CRUD::column('name')->label('District Name');
        CRUD::column('area');
        CRUD::column('total_haor');

        $this->crud->addColumns([
            [
                'name' => 'District Page URL',
                'type' => 'closure',
                'function' => function($entry) {
                    return '<a class="btn btn-sm btn-link" target="_blank" href="/district/'.$entry->id.'"><i class="la la-eye"></i> Open</a>';
                },
            ],
        ]);

        $this->crud->denyAccess('show');
    }

    /**
     * Define what happens when the Create operation is loaded.
     * 
     * @see https://backpackforlaravel.com/docs/crud-operation-create
     * @return void
     */
    protected function setupCreateOperation()
    {
        CRUD::setValidation(DistrictRequest::class);
        CRUD::setOperationSetting('contentClass', 'col-md-12 bold-labels');

        CRUD::field('name')
                ->type('text')
                ->label('District Name')
                ->size(12);
        
        CRUD::field('area')
                ->type('text')
                ->label('District Area')
                ->size(4);

        CRUD::field('total_haor')
                ->type('text')
                ->label('Total Haor')
                ->size(4);

        CRUD::field('header_img')
                ->type('image')
                ->label('Top Background Image')
                ->upload(true)
                ->disk('public')
                ->size(4);

        CRUD::field('description')
                ->type('ckeditor')
                ->label('Description')
                ->size(12);
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
