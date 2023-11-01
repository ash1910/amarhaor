<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\HaorRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class HaorCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class HaorCrudController extends CrudController
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
        CRUD::setModel(\App\Models\Haor::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/haor');
        CRUD::setEntityNameStrings('haor', 'haors');
    }

    /**
     * Define what happens when the List operation is loaded.
     * 
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {
        $this->crud->setHeading('All Haor List');

        CRUD::column('district_id')->type('relationship')->label('District Name');
        CRUD::column('upazila_id')->type('relationship')->label('Upazila Name');
        CRUD::column('name')->label('Haor Name');
        CRUD::column('area');

        $this->crud->addColumns([
            [
                'name' => 'Haor Page URL',
                'type' => 'closure',
                'function' => function($entry) {
                    return '<a class="btn btn-sm btn-link" target="_blank" href="/haor-detail/'.$entry->id.'"><i class="la la-eye"></i> Open</a>';
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
        CRUD::setValidation(HaorRequest::class);
        CRUD::setOperationSetting('contentClass', 'col-md-12 bold-labels');

        CRUD::field('district_id')
                ->type('select2')
                ->label('District Name')
                ->placeholder('Select District')
                ->model('App\Models\District')
                ->attribute('name')
                ->placeholder('Select District')
                ->options(function ($query) {
                    return $query->orderBy('name', 'ASC')->get();
                })
                ->size(3);

        CRUD::field('upazila_id')
                ->type('select2_from_ajax')
                ->minimum_input_length(0)
                ->data_source(url('admin/upazila_model/ajax-upazila-options'))
                ->dependencies(['district_id'])
                ->include_all_form_fields(true)
                ->label('Upazila Name')
                ->placeholder('Select Upazila')
                ->model('App\Models\Upazila')
                ->attribute('name')
                ->options(function ($query) {
                    return $query->orderBy('name', 'ASC')->get();
                })
                ->size(3);

        CRUD::field('name')
                ->type('text')
                ->label('Haor Name')
                ->size(4);
        
        CRUD::field('area')
                ->type('text')
                ->label('Haor Area')
                ->size(2);

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
