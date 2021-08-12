.class public Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatWindowView$OkJoyAgeFloatWindowViewOnListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$1;->onSuccess(Lcom/okjoy/okjoysdk/entity/response/OkJoyGameExtendsResponseModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$1;


# direct methods
.method public constructor <init>(Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$1;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$1$1;->this$0:Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 2

    # getter for: Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager;->tipsDialog:Lokjoy/t/c;
    invoke-static {}, Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager;->access$000()Lokjoy/t/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_11

    # getter for: Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager;->tipsDialog:Lokjoy/t/c;
    invoke-static {}, Lcom/okjoy/okjoysdk/rightAge/OkJoyRightAgeManager;->access$000()Lokjoy/t/c;

    move-result-object v0

    invoke-virtual {v0}, Lokjoy/t/c;->show()V

    :cond_11
    return-void
.end method
