.class public Lcom/facebook/appevents/codeless/internal/ViewHierarchy;
.super Ljava/lang/Object;
.source "ViewHierarchy.java"


# static fields
.field private static final ADAPTER_VIEW_ITEM_BITMASK:I = 0x9

.field private static final BUTTON_BITMASK:I = 0x2

.field private static final CHECKBOX_BITMASK:I = 0xf

.field private static final CHILDREN_VIEW_KEY:Ljava/lang/String; = "childviews"

.field private static final CLASS_NAME_KEY:Ljava/lang/String; = "classname"

.field private static final CLASS_RCTROOTVIEW:Ljava/lang/String; = "com.facebook.react.ReactRootView"

.field private static final CLASS_RCTTEXTVIEW:Ljava/lang/String; = "com.facebook.react.views.view.ReactTextView"

.field private static final CLASS_RCTVIEWGROUP:Ljava/lang/String; = "com.facebook.react.views.view.ReactViewGroup"

.field private static final CLASS_TOUCHTARGETHELPER:Ljava/lang/String; = "com.facebook.react.uimanager.TouchTargetHelper"

.field private static final CLASS_TYPE_BITMASK_KEY:Ljava/lang/String; = "classtypebitmask"

.field private static final CLICKABLE_VIEW_BITMASK:I = 0x5

.field private static final DESC_KEY:Ljava/lang/String; = "description"

.field private static final DIMENSION_HEIGHT_KEY:Ljava/lang/String; = "height"

.field private static final DIMENSION_KEY:Ljava/lang/String; = "dimension"

.field private static final DIMENSION_LEFT_KEY:Ljava/lang/String; = "left"

.field private static final DIMENSION_SCROLL_X_KEY:Ljava/lang/String; = "scrollx"

.field private static final DIMENSION_SCROLL_Y_KEY:Ljava/lang/String; = "scrolly"

.field private static final DIMENSION_TOP_KEY:Ljava/lang/String; = "top"

.field private static final DIMENSION_VISIBILITY_KEY:Ljava/lang/String; = "visibility"

.field private static final DIMENSION_WIDTH_KEY:Ljava/lang/String; = "width"

.field private static final GET_ACCESSIBILITY_METHOD:Ljava/lang/String; = "getAccessibilityDelegate"

.field private static final HINT_KEY:Ljava/lang/String; = "hint"

.field private static final ICON_BITMAP:Ljava/lang/String; = "icon_image"

.field private static final ICON_MAX_EDGE_LENGTH:I = 0x2c

.field private static final ID_KEY:Ljava/lang/String; = "id"

.field private static final IMAGEVIEW_BITMASK:I = 0x1

.field private static final INPUT_BITMASK:I = 0xb

.field private static final IS_USER_INPUT_KEY:Ljava/lang/String; = "is_user_input"

.field private static final LABEL_BITMASK:I = 0xa

.field private static final METHOD_FIND_TOUCHTARGET_VIEW:Ljava/lang/String; = "findTouchTargetView"

.field private static final PICKER_BITMASK:I = 0xc

.field private static final RADIO_GROUP_BITMASK:I = 0xe

.field private static final RATINGBAR_BITMASK:I = 0x10

.field private static RCTRootViewReference:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final REACT_NATIVE_BUTTON_BITMASK:I = 0x6

.field private static final SWITCH_BITMASK:I = 0xd

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_KEY:Ljava/lang/String; = "tag"

.field private static final TEXTVIEW_BITMASK:I = 0x0

.field private static final TEXT_IS_BOLD:Ljava/lang/String; = "is_bold"

.field private static final TEXT_IS_ITALIC:Ljava/lang/String; = "is_italic"

.field private static final TEXT_KEY:Ljava/lang/String; = "text"

.field private static final TEXT_SIZE:Ljava/lang/String; = "font_size"

.field private static final TEXT_STYLE:Ljava/lang/String; = "text_style"

.field private static methodFindTouchTargetView:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 63
    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->RCTRootViewReference:Ljava/lang/ref/WeakReference;

    .line 119
    sput-object v1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->methodFindTouchTargetView:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findRCTRootView(Landroid/view/View;)Landroid/view/View;
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 497
    :goto_0
    if-eqz p0, :cond_15

    .line 498
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->isRCTRootView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 499
    return-object p0

    .line 501
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 502
    .local v0, "viewParent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_15

    .line 503
    move-object p0, v0

    check-cast p0, Landroid/view/View;

    .line 507
    .end local v0    # "viewParent":Landroid/view/ViewParent;
    goto :goto_0

    .line 508
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getChildrenOfView(Landroid/view/View;)Ljava/util/List;
    .registers 6
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1d

    .line 139
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    .line 140
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 141
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v2, :cond_1d

    .line 142
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 146
    .end local v1    # "viewGroup":Landroid/view/ViewGroup;
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_1d
    return-object v0
.end method

.method private static getClassTypeBitmask(Landroid/view/View;)I
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, "bitmask":I
    instance-of v1, p0, Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    .line 247
    or-int/lit8 v0, v0, 0x2

    .line 250
    :cond_7
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->isClickableView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 251
    or-int/lit8 v0, v0, 0x20

    .line 253
    :cond_f
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->isAdapterViewItem(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 254
    or-int/lit16 v0, v0, 0x200

    .line 257
    :cond_17
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_3b

    .line 258
    or-int/lit16 v0, v0, 0x400

    .line 259
    or-int/lit8 v0, v0, 0x1

    .line 261
    instance-of v1, p0, Landroid/widget/Button;

    if-eqz v1, :cond_34

    .line 262
    or-int/lit8 v0, v0, 0x4

    .line 264
    instance-of v1, p0, Landroid/widget/Switch;

    if-eqz v1, :cond_2c

    .line 265
    or-int/lit16 v0, v0, 0x2000

    goto :goto_34

    .line 266
    :cond_2c
    instance-of v1, p0, Landroid/widget/CheckBox;

    if-eqz v1, :cond_34

    .line 267
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 271
    :cond_34
    :goto_34
    instance-of v1, p0, Landroid/widget/EditText;

    if-eqz v1, :cond_6a

    .line 272
    or-int/lit16 v0, v0, 0x800

    goto :goto_6a

    .line 274
    :cond_3b
    instance-of v1, p0, Landroid/widget/Spinner;

    if-nez v1, :cond_68

    instance-of v1, p0, Landroid/widget/DatePicker;

    if-eqz v1, :cond_44

    goto :goto_68

    .line 277
    :cond_44
    instance-of v1, p0, Landroid/widget/RatingBar;

    if-eqz v1, :cond_4c

    .line 278
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    goto :goto_6a

    .line 279
    :cond_4c
    instance-of v1, p0, Landroid/widget/RadioGroup;

    if-eqz v1, :cond_53

    .line 280
    or-int/lit16 v0, v0, 0x4000

    goto :goto_6a

    .line 281
    :cond_53
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_6a

    sget-object v1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->RCTRootViewReference:Ljava/lang/ref/WeakReference;

    .line 282
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {p0, v1}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->isRCTButton(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 283
    or-int/lit8 v0, v0, 0x40

    goto :goto_6a

    .line 276
    :cond_68
    :goto_68
    or-int/lit16 v0, v0, 0x1000

    .line 286
    :cond_6a
    :goto_6a
    return v0
.end method

.method public static getDictionaryOfView(Landroid/view/View;)Lorg/json/JSONObject;
    .registers 7
    .param p0, "view"    # Landroid/view/View;

    .line 220
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.facebook.react.ReactRootView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 221
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->RCTRootViewReference:Ljava/lang/ref/WeakReference;

    .line 224
    :cond_17
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 227
    .local v0, "json":Lorg/json/JSONObject;
    :try_start_1c
    invoke-static {p0, v0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->setBasicInfoOfView(Landroid/view/View;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    move-object v0, v1

    .line 229
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 230
    .local v1, "childViews":Lorg/json/JSONArray;
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getChildrenOfView(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    .line 231
    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_42

    .line 232
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 233
    .local v4, "child":Landroid/view/View;
    invoke-static {v4}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getDictionaryOfView(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    .line 234
    .local v5, "childInfo":Lorg/json/JSONObject;
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 231
    nop

    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childInfo":Lorg/json/JSONObject;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 236
    .end local v3    # "i":I
    :cond_42
    const-string v3, "childviews"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_47
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_47} :catch_49

    .line 239
    nop

    .end local v1    # "childViews":Lorg/json/JSONArray;
    .end local v2    # "children":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    goto :goto_51

    .line 237
    :catch_49
    move-exception v1

    .line 238
    .local v1, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    const-string v3, "Failed to create JSONObject for view."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_51
    return-object v0
.end method

.method private static getDimensionOfView(Landroid/view/View;)Lorg/json/JSONObject;
    .registers 5
    .param p0, "view"    # Landroid/view/View;

    .line 381
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 384
    .local v0, "dimension":Lorg/json/JSONObject;
    :try_start_5
    const-string v1, "top"

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 385
    const-string v1, "left"

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 386
    const-string v1, "width"

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 387
    const-string v1, "height"

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 388
    const-string v1, "scrollx"

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 389
    const-string v1, "scrolly"

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 390
    const-string v1, "visibility"

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_44} :catch_45

    .line 393
    goto :goto_4d

    .line 391
    :catch_45
    move-exception v1

    .line 392
    .local v1, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    const-string v3, "Failed to create JSONObject for dimension."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 395
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_4d
    return-object v0
.end method

.method public static getExistingDelegate(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    .registers 5
    .param p0, "view"    # Landroid/view/View;

    .line 401
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 402
    .local v0, "viewClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "getAccessibilityDelegate"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 403
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 404
    .local v1, "getAccessibilityDelegateMethod":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    .line 405
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View$AccessibilityDelegate;
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_15} :catch_1e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_15} :catch_1c
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_15} :catch_1a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_15} :catch_18
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_15} :catch_16

    .line 404
    return-object v2

    .line 410
    .end local v0    # "viewClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "getAccessibilityDelegateMethod":Ljava/lang/reflect/Method;
    :catch_16
    move-exception v0

    goto :goto_20

    .line 409
    :catch_18
    move-exception v0

    goto :goto_1f

    .line 408
    :catch_1a
    move-exception v0

    goto :goto_1f

    .line 407
    :catch_1c
    move-exception v0

    goto :goto_1f

    .line 406
    :catch_1e
    move-exception v0

    .line 411
    :goto_1f
    nop

    .line 412
    :goto_20
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getExistingOnTouchListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .registers 8
    .param p0, "view"    # Landroid/view/View;

    .line 418
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.view.View"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mListenerInfo"

    .line 419
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 420
    .local v1, "listenerInfoField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    if-eqz v1, :cond_13

    .line 421
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 424
    :cond_13
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 425
    .local v3, "listenerObj":Ljava/lang/Object;
    if-nez v3, :cond_1a

    .line 426
    return-object v0

    .line 429
    :cond_1a
    const/4 v4, 0x0

    .line 430
    .local v4, "listener":Landroid/view/View$OnTouchListener;
    const-string v5, "android.view.View$ListenerInfo"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mOnTouchListener"

    .line 431
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 432
    .local v5, "listenerField":Ljava/lang/reflect/Field;
    if-eqz v5, :cond_33

    .line 433
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 434
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View$OnTouchListener;
    :try_end_32
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_32} :catch_42
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_32} :catch_3b
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_32} :catch_34

    move-object v4, v2

    .line 437
    :cond_33
    return-object v4

    .line 442
    .end local v1    # "listenerInfoField":Ljava/lang/reflect/Field;
    .end local v3    # "listenerObj":Ljava/lang/Object;
    .end local v4    # "listener":Landroid/view/View$OnTouchListener;
    .end local v5    # "listenerField":Ljava/lang/reflect/Field;
    :catch_34
    move-exception v1

    .line 443
    .local v1, "e":Ljava/lang/IllegalAccessException;
    sget-object v2, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_49

    .line 440
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3b
    move-exception v1

    .line 441
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v2, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_48

    .line 438
    :catch_42
    move-exception v1

    .line 439
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    sget-object v2, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 444
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :goto_48
    nop

    .line 445
    :goto_49
    return-object v0
.end method

.method public static getHintOfView(Landroid/view/View;)Ljava/lang/String;
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 370
    const/4 v0, 0x0

    .line 371
    .local v0, "hintObj":Ljava/lang/CharSequence;
    instance-of v1, p0, Landroid/widget/EditText;

    if-eqz v1, :cond_d

    .line 372
    move-object v1, p0

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_18

    .line 373
    :cond_d
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_18

    .line 374
    move-object v1, p0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 377
    :cond_18
    :goto_18
    if-nez v0, :cond_1d

    const-string v1, ""

    goto :goto_21

    :cond_1d
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_21
    return-object v1
.end method

.method public static getParentOfView(Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 4
    .param p0, "view"    # Landroid/view/View;

    .line 123
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 124
    return-object v0

    .line 127
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 128
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_10

    .line 129
    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    .line 132
    :cond_10
    return-object v0
.end method

.method public static getTextOfView(Landroid/view/View;)Ljava/lang/String;
    .registers 11
    .param p0, "view"    # Landroid/view/View;

    .line 322
    const/4 v0, 0x0

    .line 323
    .local v0, "textObj":Ljava/lang/Object;
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_21

    .line 324
    move-object v1, p0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 326
    instance-of v1, p0, Landroid/widget/Switch;

    if-eqz v1, :cond_d7

    .line 327
    move-object v1, p0

    check-cast v1, Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    .line 328
    .local v1, "isOn":Z
    if-eqz v1, :cond_1c

    const-string v2, "1"

    goto :goto_1e

    :cond_1c
    const-string v2, "0"

    :goto_1e
    move-object v0, v2

    .line 329
    .end local v1    # "isOn":Z
    goto/16 :goto_d7

    .line 330
    :cond_21
    instance-of v1, p0, Landroid/widget/Spinner;

    if-eqz v1, :cond_3d

    .line 331
    move-object v1, p0

    check-cast v1, Landroid/widget/Spinner;

    .line 332
    .local v1, "spinner":Landroid/widget/Spinner;
    invoke-virtual {v1}, Landroid/widget/Spinner;->getCount()I

    move-result v2

    if-lez v2, :cond_3b

    .line 333
    move-object v2, p0

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    .line 334
    .local v2, "selectedItem":Ljava/lang/Object;
    if-eqz v2, :cond_3b

    .line 335
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    .end local v1    # "spinner":Landroid/widget/Spinner;
    .end local v2    # "selectedItem":Ljava/lang/Object;
    :cond_3b
    goto/16 :goto_d7

    :cond_3d
    instance-of v1, p0, Landroid/widget/DatePicker;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_6f

    .line 339
    move-object v1, p0

    check-cast v1, Landroid/widget/DatePicker;

    .line 340
    .local v1, "picker":Landroid/widget/DatePicker;
    invoke-virtual {v1}, Landroid/widget/DatePicker;->getYear()I

    move-result v5

    .line 341
    .local v5, "y":I
    invoke-virtual {v1}, Landroid/widget/DatePicker;->getMonth()I

    move-result v6

    .line 342
    .local v6, "m":I
    invoke-virtual {v1}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v7

    .line 343
    .local v7, "d":I
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v2

    const-string v2, "%04d-%02d-%02d"

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 344
    .end local v1    # "picker":Landroid/widget/DatePicker;
    .end local v5    # "y":I
    .end local v6    # "m":I
    .end local v7    # "d":I
    goto :goto_d7

    :cond_6f
    instance-of v1, p0, Landroid/widget/TimePicker;

    if-eqz v1, :cond_9b

    .line 345
    move-object v1, p0

    check-cast v1, Landroid/widget/TimePicker;

    .line 346
    .local v1, "picker":Landroid/widget/TimePicker;
    invoke-virtual {v1}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 347
    .local v5, "h":I
    invoke-virtual {v1}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 348
    .restart local v6    # "m":I
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "%02d:%02d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .end local v1    # "picker":Landroid/widget/TimePicker;
    .end local v5    # "h":I
    .end local v6    # "m":I
    goto :goto_d7

    :cond_9b
    instance-of v1, p0, Landroid/widget/RadioGroup;

    if-eqz v1, :cond_c6

    .line 350
    move-object v1, p0

    check-cast v1, Landroid/widget/RadioGroup;

    .line 351
    .local v1, "radioGroup":Landroid/widget/RadioGroup;
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    .line 352
    .local v2, "checkedId":I
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v3

    .line 353
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_ab
    if-ge v4, v3, :cond_d6

    .line 354
    invoke-virtual {v1, v4}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 355
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v6, v2, :cond_c3

    instance-of v6, v5, Landroid/widget/RadioButton;

    if-eqz v6, :cond_c3

    .line 356
    move-object v6, v5

    check-cast v6, Landroid/widget/RadioButton;

    invoke-virtual {v6}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 357
    goto :goto_d6

    .line 353
    .end local v5    # "child":Landroid/view/View;
    :cond_c3
    add-int/lit8 v4, v4, 0x1

    goto :goto_ab

    .line 360
    .end local v1    # "radioGroup":Landroid/widget/RadioGroup;
    .end local v2    # "checkedId":I
    .end local v3    # "childCount":I
    .end local v4    # "i":I
    :cond_c6
    instance-of v1, p0, Landroid/widget/RatingBar;

    if-eqz v1, :cond_d6

    .line 361
    move-object v1, p0

    check-cast v1, Landroid/widget/RatingBar;

    .line 362
    .local v1, "bar":Landroid/widget/RatingBar;
    invoke-virtual {v1}, Landroid/widget/RatingBar;->getRating()F

    move-result v2

    .line 363
    .local v2, "rating":F
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_d7

    .line 360
    .end local v1    # "bar":Landroid/widget/RatingBar;
    .end local v2    # "rating":F
    :cond_d6
    :goto_d6
    nop

    .line 366
    :cond_d7
    :goto_d7
    if-nez v0, :cond_dc

    const-string v1, ""

    goto :goto_e0

    :cond_dc
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_e0
    return-object v1
.end method

.method public static getTouchReactView([FLandroid/view/View;)Landroid/view/View;
    .registers 6
    .param p0, "location"    # [F
    .param p1, "RCTRootView"    # Landroid/view/View;

    .line 450
    invoke-static {}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->initTouchTargetHelperMethods()V

    .line 451
    sget-object v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->methodFindTouchTargetView:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    if-nez p1, :cond_b

    goto :goto_3b

    .line 456
    :cond_b
    const/4 v2, 0x2

    :try_start_c
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 457
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 458
    .local v0, "nativeTargetView":Landroid/view/View;
    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    if-lez v2, :cond_39

    .line 459
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;
    :try_end_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_28} :catch_33
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_28} :catch_2c

    .line 460
    .local v2, "reactTargetView":Landroid/view/View;
    if-eqz v2, :cond_2b

    move-object v1, v2

    :cond_2b
    return-object v1

    .line 464
    .end local v0    # "nativeTargetView":Landroid/view/View;
    .end local v2    # "reactTargetView":Landroid/view/View;
    :catch_2c
    move-exception v0

    .line 465
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v2, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3a

    .line 462
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_33
    move-exception v0

    .line 463
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v2, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 466
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_39
    nop

    .line 468
    :goto_3a
    return-object v1

    .line 452
    :cond_3b
    :goto_3b
    return-object v1
.end method

.method private static getViewLocationOnScreen(Landroid/view/View;)[F
    .registers 5
    .param p0, "view"    # Landroid/view/View;

    .line 512
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 513
    .local v1, "location":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 514
    new-array v0, v0, [F

    .line 515
    .local v0, "result":[F
    const/4 v2, 0x0

    aget v3, v1, v2

    int-to-float v3, v3

    aput v3, v0, v2

    .line 516
    const/4 v2, 0x1

    aget v3, v1, v2

    int-to-float v3, v3

    aput v3, v0, v2

    .line 517
    return-object v0
.end method

.method private static initTouchTargetHelperMethods()V
    .registers 5

    .line 521
    sget-object v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->methodFindTouchTargetView:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    .line 522
    return-void

    .line 526
    :cond_5
    :try_start_5
    const-string v0, "com.facebook.react.uimanager.TouchTargetHelper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 527
    .local v0, "RCTTouchTargetHelper":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "findTouchTargetView"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [F

    aput-object v4, v2, v3

    const-class v3, Landroid/view/ViewGroup;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->methodFindTouchTargetView:Ljava/lang/reflect/Method;

    .line 529
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_23} :catch_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_23} :catch_24

    .end local v0    # "RCTTouchTargetHelper":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_31

    .line 532
    :catch_24
    move-exception v0

    .line 533
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    sget-object v1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_32

    .line 530
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2b
    move-exception v0

    .line 531
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sget-object v1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 534
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_31
    nop

    .line 535
    :goto_32
    return-void
.end method

.method private static isAdapterViewItem(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 316
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 317
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/widget/AdapterView;

    if-nez v1, :cond_f

    instance-of v1, v0, Landroidx/core/view/NestedScrollingChild;

    if-eqz v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v1, 0x1

    :goto_10
    return v1
.end method

.method public static isClickableView(Landroid/view/View;)Z
    .registers 7
    .param p0, "view"    # Landroid/view/View;

    .line 291
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.view.View"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mListenerInfo"

    .line 292
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 293
    .local v1, "listenerInfoField":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_33

    .line 294
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 295
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 296
    .local v3, "listenerObj":Ljava/lang/Object;
    if-nez v3, :cond_1a

    .line 297
    return v0

    .line 299
    :cond_1a
    const-string v4, "android.view.View$ListenerInfo"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "mOnClickListener"

    .line 300
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 302
    .local v4, "listenerField":Ljava/lang/reflect/Field;
    if-eqz v4, :cond_33

    .line 303
    nop

    .line 304
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View$OnClickListener;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2f} :catch_34

    .line 305
    .local v5, "listener":Landroid/view/View$OnClickListener;
    if-eqz v5, :cond_32

    const/4 v0, 0x1

    :cond_32
    return v0

    .line 310
    .end local v1    # "listenerInfoField":Ljava/lang/reflect/Field;
    .end local v3    # "listenerObj":Ljava/lang/Object;
    .end local v4    # "listenerField":Ljava/lang/reflect/Field;
    .end local v5    # "listener":Landroid/view/View$OnClickListener;
    :cond_33
    goto :goto_3c

    .line 308
    :catch_34
    move-exception v1

    .line 309
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    const-string v3, "Failed to check if the view is clickable."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 312
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3c
    return v0
.end method

.method public static isRCTButton(Landroid/view/View;Landroid/view/View;)Z
    .registers 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "RCTRootView"    # Landroid/view/View;

    .line 473
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "className":Ljava/lang/String;
    const-string v1, "com.facebook.react.views.view.ReactViewGroup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    .line 475
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getViewLocationOnScreen(Landroid/view/View;)[F

    move-result-object v1

    .line 476
    .local v1, "location":[F
    invoke-static {v1, p1}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getTouchReactView([FLandroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 477
    .local v3, "touchTargetView":Landroid/view/View;
    if-eqz v3, :cond_26

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v4, v5, :cond_26

    const/4 v2, 0x1

    :cond_26
    return v2

    .line 480
    .end local v1    # "location":[F
    .end local v3    # "touchTargetView":Landroid/view/View;
    :cond_27
    return v2
.end method

.method public static isRCTRootView(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 484
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.facebook.react.ReactRootView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isRCTTextView(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 488
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.facebook.react.views.view.ReactTextView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isRCTViewGroup(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 492
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.facebook.react.views.view.ReactViewGroup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setAppearanceOfView(Landroid/view/View;Lorg/json/JSONObject;F)Lorg/json/JSONObject;
    .registers 10
    .param p0, "view"    # Landroid/view/View;
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "displayDensity"    # F

    .line 183
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 184
    .local v0, "textStyle":Lorg/json/JSONObject;
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_33

    .line 185
    move-object v1, p0

    check-cast v1, Landroid/widget/TextView;

    .line 186
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    .line 187
    .local v2, "typeface":Landroid/graphics/Typeface;
    if-eqz v2, :cond_33

    .line 188
    const-string v3, "font_size"

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 189
    const-string v3, "is_bold"

    invoke-virtual {v2}, Landroid/graphics/Typeface;->isBold()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 190
    const-string v3, "is_italic"

    invoke-virtual {v2}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 191
    const-string v3, "text_style"

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    .end local v1    # "textView":Landroid/widget/TextView;
    .end local v2    # "typeface":Landroid/graphics/Typeface;
    :cond_33
    instance-of v1, p0, Landroid/widget/ImageView;

    if-eqz v1, :cond_7b

    .line 195
    move-object v1, p0

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 196
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_7b

    .line 197
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p2

    const/high16 v3, 0x42300000    # 44.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_7b

    .line 198
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p2

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_7b

    .line 199
    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 200
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_7b

    .line 201
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 202
    .local v3, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 203
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 204
    .local v4, "byteArray":[B
    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    .line 205
    .local v5, "encoded":Ljava/lang/String;
    const-string v6, "icon_image"

    invoke-virtual {p1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_7b} :catch_7c

    .line 212
    .end local v0    # "textStyle":Lorg/json/JSONObject;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "byteArray":[B
    .end local v5    # "encoded":Ljava/lang/String;
    :cond_7b
    goto :goto_82

    .line 210
    :catch_7c
    move-exception v0

    .line 211
    .local v0, "e":Lorg/json/JSONException;
    sget-object v1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 214
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_82
    return-object p1
.end method

.method public static setBasicInfoOfView(Landroid/view/View;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 151
    :try_start_0
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getTextOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "text":Ljava/lang/String;
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getHintOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "hint":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 154
    .local v2, "tag":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    .line 156
    .local v3, "description":Ljava/lang/CharSequence;
    const-string v4, "classname"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string v4, "classtypebitmask"

    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getClassTypeBitmask(Landroid/view/View;)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 158
    const-string v4, "id"

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 159
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isSensitiveUserData(Landroid/view/View;)Z

    move-result v4
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_33} :catch_6c

    const-string v5, "text"

    if-nez v4, :cond_3b

    .line 160
    :try_start_37
    invoke-virtual {p1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_46

    .line 162
    :cond_3b
    const-string v4, ""

    invoke-virtual {p1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    const-string v4, "is_user_input"

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 165
    :goto_46
    const-string v4, "hint"

    invoke-virtual {p1, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    if-eqz v2, :cond_56

    .line 167
    const-string v4, "tag"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    :cond_56
    if-eqz v3, :cond_61

    .line 170
    const-string v4, "description"

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    :cond_61
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getDimensionOfView(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    .line 173
    .local v4, "dimension":Lorg/json/JSONObject;
    const-string v5, "dimension"

    invoke-virtual {p1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6a
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_6a} :catch_6c

    .line 176
    nop

    .end local v0    # "text":Ljava/lang/String;
    .end local v1    # "hint":Ljava/lang/String;
    .end local v2    # "tag":Ljava/lang/Object;
    .end local v3    # "description":Ljava/lang/CharSequence;
    .end local v4    # "dimension":Lorg/json/JSONObject;
    goto :goto_72

    .line 174
    :catch_6c
    move-exception v0

    .line 175
    .local v0, "e":Lorg/json/JSONException;
    sget-object v1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 178
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_72
    return-object p1
.end method
