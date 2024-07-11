.class public Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;
.super Landroid/app/Service;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService$OkJoyAgeFloatViewServiceBinder;
    }
.end annotation


# static fields
.field public static ageFloatWindowView:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;

.field public static smallWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private destroy()V
    .registers 2

    sget-object v0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;->ageFloatWindowView:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    sput-object v0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;->ageFloatWindowView:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;

    :cond_7
    return-void
.end method

.method public static getAgeFloatWindowView()Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;
    .registers 1

    sget-object v0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;->ageFloatWindowView:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;

    return-object v0
.end method


# virtual methods
.method public createSmallWindow(Landroid/app/Activity;)V
    .registers 5

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    sget-object v1, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;->ageFloatWindowView:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;

    if-nez v1, :cond_67

    new-instance v1, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;

    invoke-direct {v1, p1}, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;-><init>(Landroid/app/Activity;)V

    sput-object v1, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;->ageFloatWindowView:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;

    sget-object v1, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;->smallWindowParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_59

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sput-object v1, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;->smallWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v2, 0x8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x35

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget-object v2, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;->ageFloatWindowView:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;

    invoke-virtual {v2}, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;->getWindowSafeAreaRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v1, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;->smallWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {p1, v2}, Lokjoy/a/g;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    sget-object p1, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;->smallWindowParams:Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;->viewWidth:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    sget-object p1, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;->smallWindowParams:Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;->viewHeight:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_59
    sget-object p1, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;->ageFloatWindowView:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;

    sget-object v1, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;->smallWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v1}, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;->setmLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    sget-object p1, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;->ageFloatWindowView:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;

    sget-object v1, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;->smallWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p1, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_67
    return-void
.end method

.method public hide()V
    .registers 3

    sget-object v0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;->ageFloatWindowView:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sget-object v1, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;->ageFloatWindowView:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;->ageFloatWindowView:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;

    :cond_18
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    new-instance p1, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService$OkJoyAgeFloatViewServiceBinder;

    invoke-direct {p1, p0}, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService$OkJoyAgeFloatViewServiceBinder;-><init>(Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;)V

    return-object p1
.end method

.method public onDestroy()V
    .registers 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-direct {p0}, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;->destroy()V

    return-void
.end method

.method public show()V
    .registers 2

    sget-object v0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;->ageFloatWindowView:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView;->show()V

    return-void

    :cond_8
    invoke-static {}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getInstance()Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatViewService;->createSmallWindow(Landroid/app/Activity;)V

    return-void
.end method
