<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\LandingPageRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class LandingPageCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class LandingPageCrudController extends CrudController
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
        CRUD::setModel(\App\Models\LandingPage::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/landing-page');
        CRUD::setEntityNameStrings('landing page', 'landing pages');
    }

    /**
     * Define what happens when the List operation is loaded.
     * 
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {

        $this->crud->setHeading('Landing Page');
        $this->crud->denyAccess('create');
        $this->crud->denyAccess('show');
        $this->crud->denyAccess('delete');

        $this->crud->addColumns([
            [
                'name' => 'page',
                'type' => 'closure',
                'function' => function($entry) {
                    return 'Landing Page';
                },
            ],
            [
                'name' => 'Site URL',
                'type' => 'closure',
                'function' => function($entry) {
                    return '<a class="btn btn-sm btn-link" target="_blank" href="/"><i class="la la-eye"></i> Open</a>';
                },
            ],
        ]);
        

        /**
         * Columns can be defined using the fluent syntax or array syntax:
         * - CRUD::column('price')->type('number');
         * - CRUD::addColumn(['name' => 'price', 'type' => 'number']); 
         */
    }

    /**
     * Define what happens when the Create operation is loaded.
     * 
     * @see https://backpackforlaravel.com/docs/crud-operation-create
     * @return void
     */
    protected function setupCreateOperation()
    {
        $this->crud->setHeading('Landing Page');
        $this->crud->removeSaveActions(['save_and_new','save_and_preview']);
        CRUD::setValidation(LandingPageRequest::class);
        CRUD::setOperationSetting('contentClass', 'col-md-12 bold-labels');


        // -----------------
        // header tab
        // -----------------

        CRUD::field('topbar_logo')
                ->type('image')
                ->label('Header Logo')
                ->upload(true)
                ->disk('public')
                ->tab('Header')
                ->size(6);

        CRUD::field('topbar_menu_items')
                ->type('table')
                ->label('Menu Items')
                ->columns([
                    'text'  => 'Text',
                    'url'  => 'URL',
                ])
                ->tab('Header')
                ->size(10);

        CRUD::addField([
            'name' => 'social_media_menu_items',
            'label' => 'Social Media Items',
            'type' => 'repeatable',
            'fields' => [
                [
                    'name'    => 'icon',
                    'label'   => 'Icon',
                    'type'    => 'icon_picker',
                    'iconset' => 'fontawesome5', // options: fontawesome, glyphicon, ionicon, weathericon, mapicon, octicon, typicon, elusiveicon, materialdesign
                    'wrapper' => [
                        'class' => 'col-md-4',
                    ],
                    
                ],
                [
                    'name' => 'url',
                    'label' => 'URL',
                    'type' => 'text',
                    'wrapper' => [
                        'class' => 'col-md-6',
                    ],
                    
                ],
            ],
            'new_item_label' => 'Add',
            'tab' => 'Header',
            'size' => 10,
        ]);


        // -----------------
        // Home tab
        // -----------------

        CRUD::field('home_top_img')
                ->type('image')
                ->label('Top Background Image')
                ->upload(true)
                ->disk('public')
                ->tab('Home')
                ->size(6);

        CRUD::field('home_top_img2')
                ->type('image')
                ->label('Top Background Image (After Effect)')
                ->upload(true)
                ->disk('public')
                ->tab('Home')
                ->size(6);

        CRUD::field('home_top_title')
                ->type('text')
                ->label('Top Title')
                ->tab('Home')
                ->size(6);

        CRUD::field('home_top_text')
                ->type('textarea')
                ->label('Top Text')
                ->tab('Home')
                ->size(12);

        CRUD::addField([
            'name' => 'home_content_items',
            'label' => 'Content Blocks',
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
                        'class' => 'col-md-2',
                    ],
                    
                ],
                [
                    'name' => 'title',
                    'label' => 'Title',
                    'type' => 'text',
                    'wrapper' => [
                        'class' => 'col-md-2',
                    ],
                ],
                [
                    'name' => 'text',
                    'label' => 'Text',
                    'type' => 'ckeditor',
                    'wrapper' => [
                        'class' => 'col-md-6',
                    ],
                ],
                [
                    'name' => 'url',
                    'label' => 'URL',
                    'type' => 'text',
                    'wrapper' => [
                        'class' => 'col-md-2',
                    ],
                    
                ],
            ],
            'new_item_label' => 'Add',
            'tab' => 'Home',
            'size' => 12,
        ]);

        CRUD::addField([
            'name' => 'about_content_items',
            'label' => 'Content Blocks',
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
                [
                    'name' => 'text',
                    'label' => 'Text',
                    'type' => 'textarea',
                    'wrapper' => [
                        'class' => 'col-md-9',
                    ],
                ],
            ],
            'new_item_label' => 'Add',
            'tab' => 'About',
            'size' => 12,
        ]);

        CRUD::field('contact_img')
                ->type('image')
                ->label('Image')
                ->upload(true)
                ->disk('public')
                ->tab('Contact')
                ->size(6);

        CRUD::field('contact_title')
                ->type('text')
                ->label('Title')
                ->tab('Contact')
                ->size(6);


        // -----------------
        // Cookie tab
        // -----------------

        CRUD::field('cookie_policy_title')
                ->type('text')
                ->label('Title')
                ->tab('Cookie Policy')
                ->size(6);

        CRUD::field('cookie_policy_content')
                ->type('ckeditor')
                ->label('Content')
                ->tab('Cookie Policy')
                ->size(12);


        CRUD::field('privacy_policy_title')
                ->type('text')
                ->label('Title')
                ->tab('Privacy Policy')
                ->size(6);

        CRUD::field('privacy_policy_content')
                ->type('ckeditor')
                ->label('Content')
                ->tab('Privacy Policy')
                ->size(12);

        CRUD::field('terms_conditions_title')
                ->type('text')
                ->label('Title')
                ->tab('Terms and Conditions')
                ->size(6);

        CRUD::field('terms_conditions_content')
                ->type('ckeditor')
                ->label('Content')
                ->tab('Terms and Conditions')
                ->size(12);


        // -----------------
        // Footer tab
        // -----------------

        CRUD::field('footer_logo')
                ->type('image')
                ->label('Footer Logo')
                ->upload(true)
                ->disk('public')
                ->tab('Footer')
                ->size(6);

        CRUD::field('footer_link_items')
                ->type('table')
                ->label('Link Items')
                ->columns([
                    'text'  => 'Text',
                    'url'  => 'URL',
                ])
                ->tab('Footer')
                ->size(10);

        CRUD::field('footer_copyright_text')
                ->type('text')
                ->label('Footer Copyright Text')
                ->tab('Footer')
                ->size(8);
        


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
