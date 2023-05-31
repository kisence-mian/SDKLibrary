.class Lcom/taptap/pay/sdk/library/TapTapLicense$1;
.super Ljava/lang/Object;
.source "TapTapLicense.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/pay/sdk/library/TapTapLicense;->check(Landroid/app/Activity;Landroid/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/pay/sdk/library/TapTapLicense;


# direct methods
.method constructor <init>(Lcom/taptap/pay/sdk/library/TapTapLicense;)V
    .registers 2
    .param p1, "this$0"    # Lcom/taptap/pay/sdk/library/TapTapLicense;

    .line 66
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/TapTapLicense$1;->this$0:Lcom/taptap/pay/sdk/library/TapTapLicense;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 69
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapTapLicense$1;->this$0:Lcom/taptap/pay/sdk/library/TapTapLicense;

    # getter for: Lcom/taptap/pay/sdk/library/TapTapLicense;->cnIabService:Lcom/taptap/pay/sdk/library/IabService;
    invoke-static {v0}, Lcom/taptap/pay/sdk/library/TapTapLicense;->access$000(Lcom/taptap/pay/sdk/library/TapTapLicense;)Lcom/taptap/pay/sdk/library/IabService;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/taptap/pay/sdk/library/TapTapLicense;->checkLicense(Lcom/taptap/pay/sdk/library/IabService;Z)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapTapLicense$1;->this$0:Lcom/taptap/pay/sdk/library/TapTapLicense;

    .line 70
    # getter for: Lcom/taptap/pay/sdk/library/TapTapLicense;->globalIabService:Lcom/taptap/pay/sdk/library/IabService;
    invoke-static {v0}, Lcom/taptap/pay/sdk/library/TapTapLicense;->access$100(Lcom/taptap/pay/sdk/library/TapTapLicense;)Lcom/taptap/pay/sdk/library/IabService;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/taptap/pay/sdk/library/TapTapLicense;->checkLicense(Lcom/taptap/pay/sdk/library/IabService;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v2, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    nop

    :goto_1d
    move v0, v2

    .line 71
    .local v0, "result":Z
    new-instance v1, Lcom/taptap/pay/sdk/library/TapIconTitle;

    iget-object v2, p0, Lcom/taptap/pay/sdk/library/TapTapLicense$1;->this$0:Lcom/taptap/pay/sdk/library/TapTapLicense;

    # getter for: Lcom/taptap/pay/sdk/library/TapTapLicense;->cnIabService:Lcom/taptap/pay/sdk/library/IabService;
    invoke-static {v2}, Lcom/taptap/pay/sdk/library/TapTapLicense;->access$000(Lcom/taptap/pay/sdk/library/TapTapLicense;)Lcom/taptap/pay/sdk/library/IabService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taptap/pay/sdk/library/IabService;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/taptap/pay/sdk/library/TapTapLicense$1;->this$0:Lcom/taptap/pay/sdk/library/TapTapLicense;

    # getter for: Lcom/taptap/pay/sdk/library/TapTapLicense;->cnIabService:Lcom/taptap/pay/sdk/library/IabService;
    invoke-static {v3}, Lcom/taptap/pay/sdk/library/TapTapLicense;->access$000(Lcom/taptap/pay/sdk/library/TapTapLicense;)Lcom/taptap/pay/sdk/library/IabService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taptap/pay/sdk/library/IabService;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/taptap/pay/sdk/library/TapIconTitle;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 72
    .local v1, "cnRes":Lcom/taptap/pay/sdk/library/TapIconTitle;
    new-instance v2, Lcom/taptap/pay/sdk/library/TapIconTitle;

    iget-object v3, p0, Lcom/taptap/pay/sdk/library/TapTapLicense$1;->this$0:Lcom/taptap/pay/sdk/library/TapTapLicense;

    # getter for: Lcom/taptap/pay/sdk/library/TapTapLicense;->globalIabService:Lcom/taptap/pay/sdk/library/IabService;
    invoke-static {v3}, Lcom/taptap/pay/sdk/library/TapTapLicense;->access$100(Lcom/taptap/pay/sdk/library/TapTapLicense;)Lcom/taptap/pay/sdk/library/IabService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taptap/pay/sdk/library/IabService;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/taptap/pay/sdk/library/TapTapLicense$1;->this$0:Lcom/taptap/pay/sdk/library/TapTapLicense;

    # getter for: Lcom/taptap/pay/sdk/library/TapTapLicense;->globalIabService:Lcom/taptap/pay/sdk/library/IabService;
    invoke-static {v4}, Lcom/taptap/pay/sdk/library/TapTapLicense;->access$100(Lcom/taptap/pay/sdk/library/TapTapLicense;)Lcom/taptap/pay/sdk/library/IabService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taptap/pay/sdk/library/IabService;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/taptap/pay/sdk/library/TapIconTitle;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 73
    .local v2, "globalRes":Lcom/taptap/pay/sdk/library/TapIconTitle;
    if-nez v0, :cond_5c

    .line 74
    sget-object v3, Lcom/taptap/pay/sdk/library/UIHelper;->sHandler:Landroid/os/Handler;

    new-instance v4, Lcom/taptap/pay/sdk/library/TapTapLicense$1$1;

    invoke-direct {v4, p0, v1, v2}, Lcom/taptap/pay/sdk/library/TapTapLicense$1$1;-><init>(Lcom/taptap/pay/sdk/library/TapTapLicense$1;Lcom/taptap/pay/sdk/library/TapIconTitle;Lcom/taptap/pay/sdk/library/TapIconTitle;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    :cond_5c
    return-void
.end method
