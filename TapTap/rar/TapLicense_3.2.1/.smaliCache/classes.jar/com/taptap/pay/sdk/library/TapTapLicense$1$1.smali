.class Lcom/taptap/pay/sdk/library/TapTapLicense$1$1;
.super Ljava/lang/Object;
.source "TapTapLicense.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/pay/sdk/library/TapTapLicense$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taptap/pay/sdk/library/TapTapLicense$1;

.field final synthetic val$cnRes:Lcom/taptap/pay/sdk/library/TapIconTitle;

.field final synthetic val$globalRes:Lcom/taptap/pay/sdk/library/TapIconTitle;


# direct methods
.method constructor <init>(Lcom/taptap/pay/sdk/library/TapTapLicense$1;Lcom/taptap/pay/sdk/library/TapIconTitle;Lcom/taptap/pay/sdk/library/TapIconTitle;)V
    .registers 4
    .param p1, "this$1"    # Lcom/taptap/pay/sdk/library/TapTapLicense$1;

    .line 74
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/TapTapLicense$1$1;->this$1:Lcom/taptap/pay/sdk/library/TapTapLicense$1;

    iput-object p2, p0, Lcom/taptap/pay/sdk/library/TapTapLicense$1$1;->val$cnRes:Lcom/taptap/pay/sdk/library/TapIconTitle;

    iput-object p3, p0, Lcom/taptap/pay/sdk/library/TapTapLicense$1$1;->val$globalRes:Lcom/taptap/pay/sdk/library/TapIconTitle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 77
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapTapLicense$1$1;->this$1:Lcom/taptap/pay/sdk/library/TapTapLicense$1;

    iget-object v0, v0, Lcom/taptap/pay/sdk/library/TapTapLicense$1;->this$0:Lcom/taptap/pay/sdk/library/TapTapLicense;

    # getter for: Lcom/taptap/pay/sdk/library/TapTapLicense;->activityWeakReference:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/taptap/pay/sdk/library/TapTapLicense;->access$200(Lcom/taptap/pay/sdk/library/TapTapLicense;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/taptap/pay/sdk/library/TapTapLicense$1$1;->this$1:Lcom/taptap/pay/sdk/library/TapTapLicense$1;

    iget-object v1, v1, Lcom/taptap/pay/sdk/library/TapTapLicense$1;->this$0:Lcom/taptap/pay/sdk/library/TapTapLicense;

    # getter for: Lcom/taptap/pay/sdk/library/TapTapLicense;->alertDialogClickListener:Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;
    invoke-static {v1}, Lcom/taptap/pay/sdk/library/TapTapLicense;->access$300(Lcom/taptap/pay/sdk/library/TapTapLicense;)Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/taptap/pay/sdk/library/TapTapLicense$1$1;->val$cnRes:Lcom/taptap/pay/sdk/library/TapIconTitle;

    iget-object v3, p0, Lcom/taptap/pay/sdk/library/TapTapLicense$1$1;->val$globalRes:Lcom/taptap/pay/sdk/library/TapIconTitle;

    invoke-static {v0, v1, v2, v3}, Lcom/taptap/pay/sdk/library/UIHelper;->showChooser(Landroid/app/Activity;Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;Lcom/taptap/pay/sdk/library/TapIconTitle;Lcom/taptap/pay/sdk/library/TapIconTitle;)V

    .line 78
    return-void
.end method
