.class public Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$RightAgeOnListener;
    }
.end annotation


# static fields
.field public static hasContinue:Z

.field public static tipsDialog:Lokjoy/t/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lokjoy/t/c;
    .registers 1

    sget-object v0, Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager;->tipsDialog:Lokjoy/t/c;

    return-object v0
.end method

.method public static synthetic access$002(Lokjoy/t/c;)Lokjoy/t/c;
    .registers 1

    sput-object p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager;->tipsDialog:Lokjoy/t/c;

    return-object p0
.end method

.method public static synthetic access$100()Z
    .registers 1

    sget-boolean v0, Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager;->hasContinue:Z

    return v0
.end method

.method public static synthetic access$102(Z)Z
    .registers 1

    sput-boolean p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager;->hasContinue:Z

    return p0
.end method

.method public static closeFloatView()V
    .registers 1

    invoke-static {}, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;->getInstance()Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;->hide()V

    return-void
.end method

.method public static showRightView(Landroid/app/Activity;Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$RightAgeOnListener;)V
    .registers 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager;->hasContinue:Z

    new-instance v0, Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$1;

    invoke-direct {v0, p0, p1}, Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$1;-><init>(Landroid/app/Activity;Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$RightAgeOnListener;)V

    .line 1
    new-instance p1, Lokjoy/h/a1;

    invoke-direct {p1, p0}, Lokjoy/h/a1;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getRequestParams()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lokjoy/h/b1;

    invoke-direct {p1, v0}, Lokjoy/h/b1;-><init>(Lokjoy/h/c;)V

    const-string v0, "https://sdk.ok-joy.com/common/?ct=system&ac=gameExtends"

    invoke-static {v0, p0, p1}, Lokjoy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Lokjoy/h/b;)V

    return-void
.end method
