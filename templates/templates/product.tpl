<section class="produto_detalhes" id="single-product" itemscope itemtype="http://schema.org/Product">
              
    <div id="single-product-container" class="produto-content" data-variants="{{product.variants_object | json_encode }}">
        
        <div class="img-content">
            {{ product.featured_image | product_image_url('large') | img_tag(product.featured_image.alt) }}
        </div>     
                <!--<div class="mobile-bxslider">
                                  
                    {% if product.images_count > 1 %}
                        <ul class="bxslider" id="productbxslider">
                            {% for image in product.images %}
                                   <li class="product-slider" data-image="{{image.id}}" data-image-position="{{loop.index0}}">{{ image | product_image_url('big') | img_tag(image.alt) }}</li>
                            {% endfor %}
                        </ul>
                    {% else %}
                    
                        {{ product.featured_image | product_image_url('large') | img_tag(product.featured_image.alt) }}
                            
                    {% endif %}
                    
                        {% if not product.available %}
                    
                            <div class="circle out-of-stock">
                                <p>{{ "Sin stock" | translate }}</p>
                            </div>
                    
                        {% endif %}
                    
                        {% if product.free_shipping %}
                            <div class="circle free-shipping">
                                <p>{{ "Envío sin cargo" | translate }}</p>
                            </div>
                        {% endif %}
                    
                        {% if product.compare_at_price %}
                            <div class="circle offer">
                                <p>{{ "Oferta" | translate }}</p>
                            </div>
                        {% endif %}

                </div>-->
        
        <div class="conteudo">
                
            <h1>Kit de ferramentas de madeira (24 peças)</h1>
                
            <p class="valor">Preço: R$103,92</p>
                
            <p class="cep-p">Digite se Cep para calcular o frete: </p>
            <input class="form-control cep-input" type="text">
                
            <button class="frete">Calcular frete:</button>
                
            <input type="text" value="1" class="form-control carrinho-input">
            <button class="carrinho-btn">INCLUIR NO CARRINHO</button>
                
        </div>
                            <!--<div class="imagecolContent desktop-featured-product">
                            	{% if not product.available %}
                                    <div class="circle out-of-stock">
                                        <p>{{ "Sin stock" | translate }}</p>
                                    </div>
                                {% endif %}
                                 {% if product.free_shipping %}
                                    <div class="circle free-shipping">
                                        <p>{{ "Envío sin cargo" | translate }}</p>
                                    </div>
                                {% endif %}
                                {% if product.compare_at_price %}
                                    <div class="circle offer">
                                        <p>{{ "Oferta" | translate }}</p>
                                    </div>
                                {% endif %}

                                {% if product.featured_image %}
                                    <a href="{{ product.featured_image | product_image_url('original') }}" id="zoom" class="cloud-zoom" rel="position: 'inside', showTitle: false, loading: '{{ 'Cargando...' | translate }}'">
                                        {{ product.featured_image | product_image_url('large') | img_tag(product.featured_image.alt) }}
                                    </a>
                                {% else %}
                                    {{ product.featured_image | product_image_url('large') | img_tag(product.featured_image.alt) }}
                                {% endif %}
                            </div>

                            {% if product.images_count > 1 %}
                                <div id="tS2" class="jThumbnailScroller desktop-featured-product">
                                    <div class="jTscrollerContainer">
                                        <div class="jTscroller">
                                            {% for image in product.images %}
                                                <a href="{{ image | product_image_url('original') }}" class="cloud-zoom-gallery" rel="useZoom: 'zoom', smallImage: '{{ image | product_image_url('original') }}' " data-image="{{image.id}}">
                                                    {{ image | product_image_url('thumb') | img_tag(image.alt) }}
                                                </a>
                                            {% endfor %}
                                        </div>
                                    </div>
                                    <a href="#" class="jTscrollerPrevButton"></a>
                                    <a href="#" class="jTscrollerNextButton"></a>
                                </div>
                            {% endif %}
					</div>
                </div>
                <div class="span6">
                    <div class="descriptioncol">
                        <div class="descriptioncolContent">

                            <div class="row-fluid">
                                <div class="title">
                                    <h1 itemprop="name">{{ product.name }}</h1>
                                </div>


                                <div class="price-holder" itemprop="offers" itemscope itemtype="http://schema.org/Offer">
                                    <div class="price {% if not product.display_price %}hidden{% endif %}">
                                        <span class="price" id="price_display" itemprop="price" {% if not product.display_price %}class="hidden"{% endif %}>{{ product.price | money }}</span>
                                        <span class="price-compare">
                                        	<span id="compare_price_display" {% if not product.compare_at_price %}class="hidden"{% endif %}>{{ product.compare_at_price | money }}</span>
                                        </span>
                                        <meta itemprop="priceCurrency" content="{{ product.currency }}" />
                                        {% if product.stock_control %}
                                            <meta itemprop="inventoryLevel" content="{{ product.stock }}" />
                                            <meta itemprop="availability" href="http://schema.org/{{ product.stock ? 'InStock' : 'OutOfStock' }}" content="{{ product.stock ? 'In stock' : 'Out of stock' }}" />
                                        {% endif %}
                                    </div>
                                </div>

                                <meta itemprop="image" content="{{ 'http:' ~ product.featured_image | product_image_url('medium') }}" />
                                <meta itemprop="url" content="{{ product.social_url }}" />
                                {% if page_description %}
                                    <meta itemprop="description" content="{{ page_description }}" />
                                {% endif %}
                                {% if product.sku %}
                                    <meta itemprop="sku" content="{{ product.sku }}" />
                                {% endif %}
                                {% if product.weight %}
                                    <div itemprop="weight" itemscope itemtype="http://schema.org/QuantitativeValue" style="display:none;">
                                        <meta itemprop="unitCode" content="{{ product.weight_unit | iso_to_uncefact}}" />
                                        <meta itemprop="value" content="{{ product.weight}}" />
                                    </div>
                                {% endif %}
                            </div>
                            {% snipplet "installments_in_product.tpl" %}
                            {% if product.show_installments and product.display_price %}
                                    {% set installments_info = product.installments_info %}
                                    {% if installments_info %}
                                        <a id="button-installments" class="button secondary" href="#InstallmentsModal" role="button" data-toggle="modal">{{ "Ver el detalle de las cuotas" | translate }}</a>
                                    {% endif %}
                            {% endif %}
                                <form id="product_form" method="post" action="{{ store.cart_url }}">
                                <input type="hidden" name="add_to_cart" value="{{product.id}}" />
                                {% if product.variations %}
                                    <div class="fancyContainer">
                                        {% for variation in product.variations %}
                                            <div class="span4">
                                                <div class="attributeLine">
                                                    <label class="variation-label" for="variation_{{loop.index}}">{{variation.name}}</label>
                                                    <select id="variation_{{loop.index}}" name="variation[{{ variation.id }}]" onchange="LS.changeVariant(changeVariant, '#single-product-container')">
                                                        {% for option in variation.options %}
                                                            <option value="{{ option.id }}" {% if product.default_options[variation.id] == option.id %}selected="selected"{% endif %}>{{ option.name }}</option>
                                                        {% endfor %}
                                                    </select>
                                                </div>
                                            </div>
                                        {% endfor %}
                                    </div>
                                {% endif %}
                                <div class="row-fluid">
                                    {% if product.available %}
                                        <div class="quantity">
                                            <input class="spinner" value="1" type="text" name="quantity{{ item.id }}" value="{{ item.quantity }}" />
                                        </div>
                                   {% endif %}
                                    <div class="addToCartButton">
                                        {% set state = store.is_catalog ? 'catalog' : (product.available ? product.display_price ? 'cart' : 'contact' : 'nostock') %}
                                        {% set texts = {'cart': "Agregar al carrito", 'contact': "Consultar precio", 'nostock': "Sin stock", 'catalog': "Consultar"} %}
                                        <input type="submit" class="button addToCart {{state}}" value="{{ texts[state] | translate }}" {% if state == 'nostock' %}disabled{% endif %}/>
                                    </div>
                                </div>
                                <div class="row-fluid">
                                    {% snipplet "shipping_cost_calculator.tpl" with shipping_calculator_show = settings.shipping_calculator_product_page and not product.free_shipping, shipping_calculator_variant = product.selected_or_first_available_variant %}
                                </div>
                            </form>

                            <div class="shareLinks">
                                <div class="shareItem facebook">
                                    {{product.social_url | fb_like('store-product', 'button_count')}}
                                </div>
                                <div class="shareItem twitter">
                                    {{product.social_url | tw_share('none', 'Tweet', store.twitter_user, current_language.lang) }}
                                </div>
                                <div class="shareItem google">
                                    {{product.social_url | g_plus('medium') }}
                                </div>
                                <div class="shareItem pinterest">
                                    {{product.social_url | pin_it('http:' ~ product.featured_image | product_image_url('original'))}}
                                </div>
                            </div>



                            <div class="description user-content">
                                {{ product.description }}
                            </div>
                            {% if settings.show_product_fb_comment_box %}
                                <div class="fb-comments" data-href="{{ product.social_url }}" data-num-posts="5" data-width="100%"></div>
                            {% endif %}

                        </div>
                    </div>
                </div>
-->
            </div>
        
    <!--<div id="related-products">
        {% if product.metafields.related_products.html %}
            {{ product.metafields.related_products.html | raw }}
        {% else %}
            {% set related_products = category.products | shuffle | take(4) %}
            {% if related_products | length > 1 %}
                <div class="row-fluid">
                    <div class="container">
                        <div class="dest-list">
                            {% set related_products %}
                                {% for related in related_products | shuffle | take(4) %}
                                    {% if product.id != related.id %}
                                        {% include 'snipplets/single_product.tpl' with {product : related} %}
                                    {% endif %}
                                {% endfor %}
                            {% endset %}
                            <h2>{{"Productos Relacionados" | translate}}</h2>
                            <div id="tS1" class="jThumbnailScroller hidden-phone">
                                <div class="jTscrollerContainer">
                                    <div class="jTscroller">
                                        {{ related_products }}
                                    </div>
                                </div>
                                <a href="#" class="jTscrollerPrevButton"></a>
                                <a href="#" class="jTscrollerNextButton"></a>
                            </div>

                            <div class="visible-phone">
                                {{ related_products }}
                            </div>
                        </div>
                    </div>
                </div>
            {% endif %}
        {% endif %}
    </div>
    {% if installments_info %}
     {% set gateways = installments_info | length %}
    <div id="InstallmentsModal" class="modal hide fade{% if gateways <= '3' %} two-gates{% endif %}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-body">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <div class="installments">
                <ul class="nav nav-tabs">
                    {% for method, installments in installments_info %}
                        <li id="method_{{ method }}" {% if loop.first %}class="active"{% endif %}><a href="#installment_{{ method }}_{{ installment }}" data-toggle="tab">{{ method == 'paypal_multiple' ? 'PAYPAL' : (method == 'itaushopline'? 'ITAU SHOPLINE' : method | upper) }}</a></li>
                    {% endfor %}
                </ul>
                <div class="tab-content">
                    {% for method, installments in installments_info %}
                                <div class="tab-pane{% if loop.first %} active{% endif %}" id="installment_{{ method }}_">
                                    <div class="span3">
                                    {% for installment, data_installment in installments %}
                                        <span id="installment_{{ method }}_{{ installment }}" >
                                            <strong class="installment-amount">{{ installment }}</strong> x <strong class="installment-price">{{ data_installment.installment_value_cents | money }}</strong>
                                            {% if data_installment.without_interests %} {{ 'sin interés' | t }}{% endif %}
                                        </span>
                                        {% if installment == 12 %}</div><div class="span3">{% endif %}
                                    {% endfor %}
                                    </div>
                                </div>
                    {% endfor %}
                </div>
            </div>
        </div>
    </div> 
    {% endif %}-->

</section>
