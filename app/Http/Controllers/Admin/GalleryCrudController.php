<?php

namespace App\Http\Controllers\Admin;

use App\Models\GalleryCategory;
use App\Http\Requests\GalleryRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class GalleryCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class GalleryCrudController extends CrudController
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
        CRUD::setModel(\App\Models\Gallery::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/gallery');
        CRUD::setEntityNameStrings('gallery', 'galleries');
    }

    /**
     * Define what happens when the List operation is loaded.
     * 
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {
        $this->crud->setHeading('All Gallery List');

        CRUD::column('gallery_category_id')->type('relationship')->label('Category');
        CRUD::column('name')->label('Image Name');

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
        CRUD::setValidation(GalleryRequest::class);
        CRUD::setOperationSetting('contentClass', 'col-md-12 bold-labels');

        CRUD::field('gallery_category_id')
                ->type('select2')
                ->label('Category')
                ->placeholder('Select Category')
                ->model('App\Models\GalleryCategory')
                ->attribute('name')
                ->options(function ($query) {
                    return $query->orderBy('name', 'ASC')->get();
                })
                ->size(6);

        CRUD::field('name')
                ->type('text')
                ->label('Image Name')
                ->size(6);

        CRUD::field('image')
                ->type('image')
                ->label('Image')
                ->upload(true)
                ->disk('public')
                ->size(4);
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
