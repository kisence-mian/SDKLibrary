.class Lcom/taptap/sdk/ui/l$f$a;
.super Ljava/lang/Object;
.source "WebBlock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/ui/l$f;->TapTapAPI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/taptap/sdk/ui/l$f;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/ui/l$f;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/ui/l$f$a;->b:Lcom/taptap/sdk/ui/l$f;

    iput-object p2, p0, Lcom/taptap/sdk/ui/l$f$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/ui/l$f$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4
    :try_start_d
    iget-object v0, p0, Lcom/taptap/sdk/ui/l$f$a;->b:Lcom/taptap/sdk/ui/l$f;

    iget-object v0, v0, Lcom/taptap/sdk/ui/l$f;->a:Lcom/taptap/sdk/ui/l;

    invoke-virtual {v0}, Lcom/taptap/sdk/ui/l;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_18} :catch_19

    goto :goto_1a

    :catch_19
    move-exception v0

    :goto_1a
    return-void
.end method
