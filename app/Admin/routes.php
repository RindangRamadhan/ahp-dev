<?php

use Illuminate\Routing\Router;

Admin::registerAuthRoutes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/auth/login', function () {
        return view('login');
    });
    $router->get('/', 'HomeController@index');
    $router->resource('auth/product-categorys', ProductCategoryController::class);
    $router->resource('auth/products', ProductController::class);
    $router->resource('auth/visi-misi', VisiMisiController::class);
    $router->resource('auth/privacy-policy', PrivacyPolicyController::class);
    $router->resource('auth/term-of-use', TermOfUseController::class);
    $router->resource('auth/faq', FaqController::class);
    $router->resource('auth/about-us', TentangKamiController::class);
    $router->resource('auth/benefit', BenefitController::class);
    $router->resource('auth/product-groups', ProductGroupController::class);
    $router->resource('auth/banners', BannerController::class);
    $router->resource('auth/our-partner', OurPartnerController::class);
    $router->resource('auth/news', NewsController::class);
    $router->resource('auth/pengunjung', PengunjungController::class);
    $router->resource('auth/testimonial', TestimonialController::class);
    $router->resource('auth/album-family', AlbumFamilyController::class);
    $router->resource('auth/contact-profile', ContactProfileController::class);
    $router->resource('auth/contact-support', ContactSupportController::class);
    $router->resource('auth/main-product', MainTitleProductController::class);
    $router->resource('auth/product-faq', ProdukFaqController::class);
    $router->resource('auth/implementasi-produk', GulmaController::class);
    $router->resource('auth/our-product', OurProductController::class);
    $router->resource('auth/our-products-categorys', OurProductCategoryController::class);
    $router->resource('auth/our-products-groups', OurProductGroupController::class);
    $router->resource('auth/implementasi-our-products', OurProductGulmaController::class);
    $router->resource('auth/our-products-faq', OurProductFaqController::class);
});
