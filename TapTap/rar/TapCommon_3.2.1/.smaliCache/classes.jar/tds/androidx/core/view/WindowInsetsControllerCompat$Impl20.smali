.class Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20;
.super Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl;
.source "WindowInsetsControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/core/view/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl20"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;

.field protected final mWindow:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/view/Window;Landroid/view/View;)V
    .registers 3
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "view"    # Landroid/view/View;

    .line 276
    invoke-direct {p0}, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl;-><init>()V

    .line 277
    iput-object p1, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    .line 278
    iput-object p2, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20;->mView:Landroid/view/View;

    .line 279
    return-void
.end method

.method private hideForType(I)V
    .registers 5
    .param p1, "type"    # I

    .line 348
    sparse-switch p1, :sswitch_data_32

    goto :goto_30

    .line 357
    :sswitch_4
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 358
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    .line 359
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_30

    .line 354
    :sswitch_21
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20;->setSystemUiFlag(I)V

    .line 355
    return-void

    .line 350
    :sswitch_26
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20;->setSystemUiFlag(I)V

    .line 351
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20;->setWindowFlag(I)V

    .line 352
    return-void

    .line 362
    :goto_30
    return-void

    nop

    :sswitch_data_32
    .sparse-switch
        0x1 -> :sswitch_26
        0x2 -> :sswitch_21
        0x8 -> :sswitch_4
    .end sparse-switch
.end method

.method private showForType(I)V
    .registers 5
    .param p1, "type"    # I

    .line 293
    sparse-switch p1, :sswitch_data_4c

    goto :goto_4a

    .line 303
    :sswitch_4
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20;->mView:Landroid/view/View;

    .line 306
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 310
    :cond_14
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1e

    .line 312
    :cond_18
    iget-object v1, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 316
    :goto_1e
    if-nez v0, :cond_29

    .line 317
    iget-object v1, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 320
    :cond_29
    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 321
    move-object v1, v0

    .line 322
    .local v1, "finalView":Landroid/view/View;
    new-instance v2, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20$1;

    invoke-direct {v2, p0, v1}, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20$1;-><init>(Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_4a

    .line 299
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "finalView":Landroid/view/View;
    :sswitch_3b
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20;->unsetSystemUiFlag(I)V

    .line 300
    return-void

    .line 295
    :sswitch_40
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20;->unsetSystemUiFlag(I)V

    .line 296
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20;->unsetWindowFlag(I)V

    .line 297
    return-void

    .line 334
    :cond_4a
    :goto_4a
    return-void

    nop

    :sswitch_data_4c
    .sparse-switch
        0x1 -> :sswitch_40
        0x2 -> :sswitch_3b
        0x8 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method getSystemBarsBehavior()I
    .registers 2

    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method hide(I)V
    .registers 4
    .param p1, "typeMask"    # I

    .line 338
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x100

    if-gt v0, v1, :cond_10

    .line 340
    and-int v1, p1, v0

    if-nez v1, :cond_a

    .line 341
    goto :goto_d

    .line 343
    :cond_a
    invoke-direct {p0, v0}, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20;->hideForType(I)V

    .line 339
    :goto_d
    shl-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 345
    .end local v0    # "i":I
    :cond_10
    return-void
.end method

.method setSystemBarsBehavior(I)V
    .registers 2
    .param p1, "behavior"    # I

    .line 388
    return-void
.end method

.method protected setSystemUiFlag(I)V
    .registers 4
    .param p1, "systemUiFlag"    # I

    .line 365
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 366
    .local v0, "decorView":Landroid/view/View;
    nop

    .line 367
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/2addr v1, p1

    .line 366
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 369
    return-void
.end method

.method protected setWindowFlag(I)V
    .registers 3
    .param p1, "windowFlag"    # I

    .line 379
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->addFlags(I)V

    .line 380
    return-void
.end method

.method show(I)V
    .registers 4
    .param p1, "typeMask"    # I

    .line 283
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x100

    if-gt v0, v1, :cond_10

    .line 285
    and-int v1, p1, v0

    if-nez v1, :cond_a

    .line 286
    goto :goto_d

    .line 288
    :cond_a
    invoke-direct {p0, v0}, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20;->showForType(I)V

    .line 284
    :goto_d
    shl-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 290
    .end local v0    # "i":I
    :cond_10
    return-void
.end method

.method protected unsetSystemUiFlag(I)V
    .registers 5
    .param p1, "systemUiFlag"    # I

    .line 372
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 373
    .local v0, "decorView":Landroid/view/View;
    nop

    .line 374
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    not-int v2, p1

    and-int/2addr v1, v2

    .line 373
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 376
    return-void
.end method

.method protected unsetWindowFlag(I)V
    .registers 3
    .param p1, "windowFlag"    # I

    .line 383
    iget-object v0, p0, Ltds/androidx/core/view/WindowInsetsControllerCompat$Impl20;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->clearFlags(I)V

    .line 384
    return-void
.end method
