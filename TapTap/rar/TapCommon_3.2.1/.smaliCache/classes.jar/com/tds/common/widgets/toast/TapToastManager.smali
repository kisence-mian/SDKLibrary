.class public final enum Lcom/tds/common/widgets/toast/TapToastManager;
.super Ljava/lang/Enum;
.source "TapToastManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tds/common/widgets/toast/TapToastManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tds/common/widgets/toast/TapToastManager;

.field public static final enum INSTANCE:Lcom/tds/common/widgets/toast/TapToastManager;

.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TDSToastManager"

.field private static handler:Landroid/os/Handler;

.field private static handlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 19
    new-instance v0, Lcom/tds/common/widgets/toast/TapToastManager;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tds/common/widgets/toast/TapToastManager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tds/common/widgets/toast/TapToastManager;->INSTANCE:Lcom/tds/common/widgets/toast/TapToastManager;

    .line 18
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/tds/common/widgets/toast/TapToastManager;

    aput-object v0, v1, v2

    sput-object v1, Lcom/tds/common/widgets/toast/TapToastManager;->$VALUES:[Lcom/tds/common/widgets/toast/TapToastManager;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static instance()Lcom/tds/common/widgets/toast/TapToastManager;
    .registers 1

    .line 32
    sget-object v0, Lcom/tds/common/widgets/toast/TapToastManager;->INSTANCE:Lcom/tds/common/widgets/toast/TapToastManager;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tds/common/widgets/toast/TapToastManager;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 18
    const-class v0, Lcom/tds/common/widgets/toast/TapToastManager;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tds/common/widgets/toast/TapToastManager;

    return-object v0
.end method

.method public static values()[Lcom/tds/common/widgets/toast/TapToastManager;
    .registers 1

    .line 18
    sget-object v0, Lcom/tds/common/widgets/toast/TapToastManager;->$VALUES:[Lcom/tds/common/widgets/toast/TapToastManager;

    invoke-virtual {v0}, [Lcom/tds/common/widgets/toast/TapToastManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/common/widgets/toast/TapToastManager;

    return-object v0
.end method


# virtual methods
.method public show(Landroid/app/Activity;Ljava/lang/String;I)V
    .registers 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "duration"    # I

    .line 36
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 37
    .local v0, "customToast":Landroid/widget/Toast;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/tds/common/R$layout;->tds_common_view_toast_message:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 39
    .local v1, "customView":Landroid/view/View;
    sget v2, Lcom/tds/common/R$id;->tv_toast_message:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 40
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 42
    const/4 v3, 0x0

    if-nez p3, :cond_25

    .line 43
    invoke-virtual {v0, v3}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_2b

    .line 44
    :cond_25
    const/4 v4, 0x1

    if-ne p3, v4, :cond_2b

    .line 45
    invoke-virtual {v0, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 47
    :cond_2b
    :goto_2b
    const/16 v4, 0x11

    invoke-virtual {v0, v4, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 48
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 49
    return-void
.end method
