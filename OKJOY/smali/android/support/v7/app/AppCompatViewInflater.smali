.class public Landroid/support/v7/app/AppCompatViewInflater;
.super Ljava/lang/Object;
.source "AppCompatViewInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppCompatViewInflater"

.field private static final sClassPrefixList:[Ljava/lang/String;

.field private static final sConstructorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sConstructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final sOnClickAttrs:[I


# instance fields
.field private final mConstructorArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    aput-object v1, v0, v2

    const-class v1, Landroid/util/AttributeSet;

    aput-object v1, v0, v3

    sput-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorSignature:[Ljava/lang/Class;

    .line 64
    new-array v0, v3, [I

    const v1, 0x101026f

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sOnClickAttrs:[I

    .line 66
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.widget."

    aput-object v1, v0, v2

    const-string v1, "android.view."

    aput-object v1, v0, v3

    const-string v1, "android.webkit."

    aput-object v1, v0, v4

    sput-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sClassPrefixList:[Ljava/lang/String;

    .line 74
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 366
    return-void
.end method

.method private checkOnClickListener(Landroid/view/View;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 293
    .local v1, "context":Landroid/content/Context;
    instance-of v3, v1, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_14

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-lt v3, v4, :cond_15

    .line 294
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->hasOnClickListeners(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 307
    :cond_14
    :goto_14
    return-void

    .line 301
    :cond_15
    sget-object v3, Landroid/support/v7/app/AppCompatViewInflater;->sOnClickAttrs:[I

    invoke-virtual {v1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 302
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, "handlerName":Ljava/lang/String;
    if-eqz v2, :cond_2a

    .line 304
    new-instance v3, Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;

    invoke-direct {v3, p1, v2}, Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    :cond_2a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_14
.end method

.method private createViewByPrefix(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .prologue
    .line 311
    sget-object v3, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorMap:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 314
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    if-nez v1, :cond_36

    .line 316
    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    if-eqz p3, :cond_43

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_21
    invoke-virtual {v4, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Landroid/view/View;

    .line 317
    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 319
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    sget-object v3, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 320
    sget-object v3, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorMap:Ljava/util/Map;

    invoke-interface {v3, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    :cond_36
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 323
    iget-object v3, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_42} :catch_45

    .line 327
    :goto_42
    return-object v3

    :cond_43
    move-object v3, p2

    .line 316
    goto :goto_21

    .line 324
    :catch_45
    move-exception v2

    .line 327
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_42
.end method

.method private createViewFromTag(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 255
    const-string v4, "view"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 256
    const-string v4, "class"

    invoke-interface {p3, v3, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 260
    :cond_11
    :try_start_11
    iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 261
    iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object p3, v4, v5

    .line 263
    const/4 v4, -0x1

    const/16 v5, 0x2e

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v4, v5, :cond_4a

    .line 264
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_25
    sget-object v4, Landroid/support/v7/app/AppCompatViewInflater;->sClassPrefixList:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_40

    .line 265
    sget-object v4, Landroid/support/v7/app/AppCompatViewInflater;->sClassPrefixList:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {p0, p1, p2, v4}, Landroid/support/v7/app/AppCompatViewInflater;->createViewByPrefix(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_31} :catch_58
    .catchall {:try_start_11 .. :try_end_31} :catchall_63

    move-result-object v2

    .line 266
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_3d

    .line 280
    iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v3, v4, v6

    .line 281
    iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v3, v4, v7

    .end local v1    # "i":I
    .end local v2    # "view":Landroid/view/View;
    :goto_3c
    return-object v2

    .line 264
    .restart local v1    # "i":I
    .restart local v2    # "view":Landroid/view/View;
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 280
    .end local v2    # "view":Landroid/view/View;
    :cond_40
    iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v3, v4, v6

    .line 281
    iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v3, v4, v7

    move-object v2, v3

    goto :goto_3c

    .line 272
    .end local v1    # "i":I
    :cond_4a
    const/4 v4, 0x0

    :try_start_4b
    invoke-direct {p0, p1, p2, v4}, Landroid/support/v7/app/AppCompatViewInflater;->createViewByPrefix(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_58
    .catchall {:try_start_4b .. :try_end_4e} :catchall_63

    move-result-object v2

    .line 280
    iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v3, v4, v6

    .line 281
    iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v3, v4, v7

    goto :goto_3c

    .line 274
    :catch_58
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v3, v4, v6

    .line 281
    iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v3, v4, v7

    move-object v2, v3

    goto :goto_3c

    .line 280
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_63
    move-exception v4

    iget-object v5, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v3, v5, v6

    .line 281
    iget-object v5, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v3, v5, v7

    throw v4
.end method

.method private static themifyContext(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "useAndroidTheme"    # Z
    .param p3, "useAppTheme"    # Z

    .prologue
    const/4 v4, 0x0

    .line 336
    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->View:[I

    invoke-virtual {p0, p1, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 337
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    .line 338
    .local v2, "themeId":I
    if-eqz p2, :cond_10

    .line 340
    sget v3, Landroid/support/v7/appcompat/R$styleable;->View_android_theme:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 342
    :cond_10
    if-eqz p3, :cond_23

    if-nez v2, :cond_23

    .line 344
    sget v3, Landroid/support/v7/appcompat/R$styleable;->View_theme:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 346
    if-eqz v2, :cond_23

    .line 347
    const-string v3, "AppCompatViewInflater"

    const-string v4, "app:theme is now deprecated. Please move to using android:theme instead."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_23
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 353
    if-eqz v2, :cond_3b

    instance-of v3, p0, Landroid/support/v7/view/ContextThemeWrapper;

    if-eqz v3, :cond_35

    move-object v3, p0

    check-cast v3, Landroid/support/v7/view/ContextThemeWrapper;

    .line 354
    invoke-virtual {v3}, Landroid/support/v7/view/ContextThemeWrapper;->getThemeResId()I

    move-result v3

    if-eq v3, v2, :cond_3b

    .line 357
    :cond_35
    new-instance v1, Landroid/support/v7/view/ContextThemeWrapper;

    invoke-direct {v1, p0, v2}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .end local p0    # "context":Landroid/content/Context;
    .local v1, "context":Landroid/content/Context;
    move-object p0, v1

    .line 359
    .end local v1    # "context":Landroid/content/Context;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_3b
    return-object p0
.end method

.method private verifyNotNull(Landroid/view/View;Ljava/lang/String;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 243
    if-nez p1, :cond_2d

    .line 244
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " asked to inflate view for <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">, but returned null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_2d
    return-void
.end method


# virtual methods
.method protected createAutoCompleteTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/AppCompatAutoCompleteTextView;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 223
    new-instance v0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/AppCompatButton;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 187
    new-instance v0, Landroid/support/v7/widget/AppCompatButton;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createCheckBox(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/AppCompatCheckBox;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 207
    new-instance v0, Landroid/support/v7/widget/AppCompatCheckBox;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createCheckedTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/AppCompatCheckedTextView;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 217
    new-instance v0, Landroid/support/v7/widget/AppCompatCheckedTextView;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createEditText(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/AppCompatEditText;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 192
    new-instance v0, Landroid/support/v7/widget/AppCompatEditText;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createImageButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/AppCompatImageButton;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 202
    new-instance v0, Landroid/support/v7/widget/AppCompatImageButton;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createImageView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/AppCompatImageView;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 182
    new-instance v0, Landroid/support/v7/widget/AppCompatImageView;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createMultiAutoCompleteTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 229
    new-instance v0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createRadioButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/AppCompatRadioButton;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 212
    new-instance v0, Landroid/support/v7/widget/AppCompatRadioButton;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createRatingBar(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/AppCompatRatingBar;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 234
    new-instance v0, Landroid/support/v7/widget/AppCompatRatingBar;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/AppCompatRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createSeekBar(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/AppCompatSeekBar;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 239
    new-instance v0, Landroid/support/v7/widget/AppCompatSeekBar;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createSpinner(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/AppCompatSpinner;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 197
    new-instance v0, Landroid/support/v7/widget/AppCompatSpinner;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/AppCompatTextView;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 177
    new-instance v0, Landroid/support/v7/widget/AppCompatTextView;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createView(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 251
    const/4 v0, 0x0

    return-object v0
.end method

.method final createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;
    .registers 13
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "inheritContext"    # Z
    .param p6, "readAndroidTheme"    # Z
    .param p7, "readAppTheme"    # Z
    .param p8, "wrapContext"    # Z

    .prologue
    .line 82
    move-object v0, p3

    .line 86
    .local v0, "originalContext":Landroid/content/Context;
    if-eqz p5, :cond_9

    if-eqz p1, :cond_9

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 89
    :cond_9
    if-nez p6, :cond_d

    if-eqz p7, :cond_11

    .line 91
    :cond_d
    invoke-static {p3, p4, p6, p7}, Landroid/support/v7/app/AppCompatViewInflater;->themifyContext(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;

    move-result-object p3

    .line 93
    :cond_11
    if-eqz p8, :cond_17

    .line 94
    invoke-static {p3}, Landroid/support/v7/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p3

    .line 97
    :cond_17
    const/4 v1, 0x0

    .line 100
    .local v1, "view":Landroid/view/View;
    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_134

    :cond_20
    :goto_20
    packed-switch v2, :pswitch_data_16a

    .line 158
    invoke-virtual {p0, p3, p2, p4}, Landroid/support/v7/app/AppCompatViewInflater;->createView(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    .line 161
    :goto_27
    if-nez v1, :cond_2f

    if-eq v0, p3, :cond_2f

    .line 164
    invoke-direct {p0, p3, p2, p4}, Landroid/support/v7/app/AppCompatViewInflater;->createViewFromTag(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    .line 167
    :cond_2f
    if-eqz v1, :cond_34

    .line 169
    invoke-direct {p0, v1, p4}, Landroid/support/v7/app/AppCompatViewInflater;->checkOnClickListener(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 172
    :cond_34
    return-object v1

    .line 100
    :sswitch_35
    const-string v3, "TextView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x0

    goto :goto_20

    :sswitch_3f
    const-string v3, "ImageView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    goto :goto_20

    :sswitch_49
    const-string v3, "Button"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x2

    goto :goto_20

    :sswitch_53
    const-string v3, "EditText"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x3

    goto :goto_20

    :sswitch_5d
    const-string v3, "Spinner"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x4

    goto :goto_20

    :sswitch_67
    const-string v3, "ImageButton"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x5

    goto :goto_20

    :sswitch_71
    const-string v3, "CheckBox"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x6

    goto :goto_20

    :sswitch_7b
    const-string v3, "RadioButton"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x7

    goto :goto_20

    :sswitch_85
    const-string v3, "CheckedTextView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/16 v2, 0x8

    goto :goto_20

    :sswitch_90
    const-string v3, "AutoCompleteTextView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/16 v2, 0x9

    goto :goto_20

    :sswitch_9b
    const-string v3, "MultiAutoCompleteTextView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/16 v2, 0xa

    goto/16 :goto_20

    :sswitch_a7
    const-string v3, "RatingBar"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/16 v2, 0xb

    goto/16 :goto_20

    :sswitch_b3
    const-string v3, "SeekBar"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/16 v2, 0xc

    goto/16 :goto_20

    .line 102
    :pswitch_bf
    invoke-virtual {p0, p3, p4}, Landroid/support/v7/app/AppCompatViewInflater;->createTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/AppCompatTextView;

    move-result-object v1

    .line 103
    invoke-direct {p0, v1, p2}, Landroid/support/v7/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_27

    .line 106
    :pswitch_c8
    invoke-virtual {p0, p3, p4}, Landroid/support/v7/app/AppCompatViewInflater;->createImageView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/AppCompatImageView;

    move-result-object v1

    .line 107
    invoke-direct {p0, v1, p2}, Landroid/support/v7/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_27

    .line 110
    :pswitch_d1
    invoke-virtual {p0, p3, p4}, Landroid/support/v7/app/AppCompatViewInflater;->createButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/AppCompatButton;

    move-result-object v1

    .line 111
    invoke-direct {p0, v1, p2}, Landroid/support/v7/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_27

    .line 114
    :pswitch_da
    invoke-virtual {p0, p3, p4}, Landroid/support/v7/app/AppCompatViewInflater;->createEditText(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/AppCompatEditText;

    move-result-object v1

    .line 115
    invoke-direct {p0, v1, p2}, Landroid/support/v7/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_27

    .line 118
    :pswitch_e3
    invoke-virtual {p0, p3, p4}, Landroid/support/v7/app/AppCompatViewInflater;->createSpinner(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/AppCompatSpinner;

    move-result-object v1

    .line 119
    invoke-direct {p0, v1, p2}, Landroid/support/v7/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_27

    .line 122
    :pswitch_ec
    invoke-virtual {p0, p3, p4}, Landroid/support/v7/app/AppCompatViewInflater;->createImageButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/AppCompatImageButton;

    move-result-object v1

    .line 123
    invoke-direct {p0, v1, p2}, Landroid/support/v7/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_27

    .line 126
    :pswitch_f5
    invoke-virtual {p0, p3, p4}, Landroid/support/v7/app/AppCompatViewInflater;->createCheckBox(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/AppCompatCheckBox;

    move-result-object v1

    .line 127
    invoke-direct {p0, v1, p2}, Landroid/support/v7/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_27

    .line 130
    :pswitch_fe
    invoke-virtual {p0, p3, p4}, Landroid/support/v7/app/AppCompatViewInflater;->createRadioButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/AppCompatRadioButton;

    move-result-object v1

    .line 131
    invoke-direct {p0, v1, p2}, Landroid/support/v7/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_27

    .line 134
    :pswitch_107
    invoke-virtual {p0, p3, p4}, Landroid/support/v7/app/AppCompatViewInflater;->createCheckedTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/AppCompatCheckedTextView;

    move-result-object v1

    .line 135
    invoke-direct {p0, v1, p2}, Landroid/support/v7/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_27

    .line 138
    :pswitch_110
    invoke-virtual {p0, p3, p4}, Landroid/support/v7/app/AppCompatViewInflater;->createAutoCompleteTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/AppCompatAutoCompleteTextView;

    move-result-object v1

    .line 139
    invoke-direct {p0, v1, p2}, Landroid/support/v7/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_27

    .line 142
    :pswitch_119
    invoke-virtual {p0, p3, p4}, Landroid/support/v7/app/AppCompatViewInflater;->createMultiAutoCompleteTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;

    move-result-object v1

    .line 143
    invoke-direct {p0, v1, p2}, Landroid/support/v7/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_27

    .line 146
    :pswitch_122
    invoke-virtual {p0, p3, p4}, Landroid/support/v7/app/AppCompatViewInflater;->createRatingBar(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/AppCompatRatingBar;

    move-result-object v1

    .line 147
    invoke-direct {p0, v1, p2}, Landroid/support/v7/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_27

    .line 150
    :pswitch_12b
    invoke-virtual {p0, p3, p4}, Landroid/support/v7/app/AppCompatViewInflater;->createSeekBar(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/AppCompatSeekBar;

    move-result-object v1

    .line 151
    invoke-direct {p0, v1, p2}, Landroid/support/v7/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_27

    .line 100
    :sswitch_data_134
    .sparse-switch
        -0x7404ceea -> :sswitch_a7
        -0x56c015e7 -> :sswitch_85
        -0x503aa7ad -> :sswitch_9b
        -0x37f7066e -> :sswitch_35
        -0x37e04bb3 -> :sswitch_67
        -0x274065a5 -> :sswitch_b3
        -0x1440b607 -> :sswitch_5d
        0x2e46a6ed -> :sswitch_7b
        0x431b5280 -> :sswitch_3f
        0x5445f9ba -> :sswitch_90
        0x5f7507c3 -> :sswitch_71
        0x63577677 -> :sswitch_53
        0x77471352 -> :sswitch_49
    .end sparse-switch

    :pswitch_data_16a
    .packed-switch 0x0
        :pswitch_bf
        :pswitch_c8
        :pswitch_d1
        :pswitch_da
        :pswitch_e3
        :pswitch_ec
        :pswitch_f5
        :pswitch_fe
        :pswitch_107
        :pswitch_110
        :pswitch_119
        :pswitch_122
        :pswitch_12b
    .end packed-switch
.end method
