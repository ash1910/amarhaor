<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\WetlandRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class WetlandCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class WetlandCrudController extends CrudController
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
        CRUD::setModel(\App\Models\Wetland::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/wetland');
        CRUD::setEntityNameStrings('wetland', 'wetlands');
    }

    /**
     * Define what happens when the List operation is loaded.
     * 
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {
        $this->crud->setHeading('All Wetland List');
        
        CRUD::column('name')->label('Wetland Name');
        CRUD::column('area');
        CRUD::column('district')->label('District');
        CRUD::column('upazila')->label('Upazila');

        $this->crud->addColumns([
            [
                'name' => 'Wetland Page URL',
                'type' => 'closure',
                'function' => function($entry) {
                    return '<a class="btn btn-sm btn-link" target="_blank" href="/wetland-detail/'.$entry->id.'"><i class="la la-eye"></i> Open</a>';
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
        CRUD::setValidation(WetlandRequest::class);
        CRUD::setOperationSetting('contentClass', 'col-md-12 bold-labels');

        CRUD::field('name')
                ->type('text')
                ->label('Wetland Name')
                ->size(4);
        
        CRUD::field('area')
                ->type('text')
                ->label('Wetland Area')
                ->size(2);

        CRUD::field('district')
                ->type('text')
                ->label('District Name')
                ->size(3);

        CRUD::field('upazila')
                ->type('text')
                ->label('Upazila Name')
                ->size(3);

        CRUD::field('thumb_img')
                ->type('image')
                ->label('Thumbnail Image')
                ->upload(true)
                ->disk('public')
                ->size(4);

        CRUD::field('thumb_img_big')
                ->type('image')
                ->label('Thumbnail Image Big (optional)')
                ->upload(true)
                ->disk('public')
                ->size(4);

        CRUD::field('header_img')
                ->type('image')
                ->label('Header Image')
                ->upload(true)
                ->disk('public')
                ->size(4);

        CRUD::field('overview')
                ->type('textarea')
                ->label('Overview')
                ->size(12);

        CRUD::addField([
            'name' => 'description',
            'label' => 'Description',
            'type' => 'ckeditor',
            'size' => 12,
            'options'=>[
                'filebrowserUploadUrl'=> route('upload', ['_token' => csrf_token() ]),
                'filebrowserUploadMethod'=> 'form'
            ],
        ]);

        CRUD::field('about')
                ->type('ckeditor')
                ->label('About')
                ->size(12);

        CRUD::addField([
            'name' => 'gallery_items',
            'label' => 'Gallery Images',
            'type' => 'repeatable',
            'fields' => [
                [
                    'name' => 'image',
                    'label' => 'Image',
                    'type' => 'image',
                    'disk' => 'public',
                    'upload' => true,
                    //'prefix'    => '/storage/',
                    'wrapper' => [
                        'class' => 'col-md-3',
                    ],
                    
                ],
            ],
            'new_item_label' => 'Add Image',
            'size' => 12,
        ]);


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
