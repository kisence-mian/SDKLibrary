.class public Lcom/taptap/sdk/TapLoginHelperActivity;
.super Landroid/app/Activity;
.source "TapLoginHelperActivity.java"


# static fields
.field public static final b:Ljava/lang/String; = "permission"

.field public static final c:Ljava/lang/String; = "source"


# instance fields
.field a:Lcom/taptap/sdk/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Lcom/taptap/sdk/TapLoginHelperActivity;->a:Lcom/taptap/sdk/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/taptap/sdk/a;->a(IILandroid/content/Intent;)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcom/taptap/sdk/a$a;->a()Lcom/taptap/sdk/a;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/TapLoginHelperActivity;->a:Lcom/taptap/sdk/a;

    .line 4
    invoke-static {}, Lcom/taptap/sdk/d;->a()Lcom/taptap/sdk/d;

    move-result-object p1

    iget-object v0, p0, Lcom/taptap/sdk/TapLoginHelperActivity;->a:Lcom/taptap/sdk/a;

    new-instance v1, Lcom/taptap/sdk/TapLoginHelperActivity$a;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/TapLoginHelperActivity$a;-><init>(Lcom/taptap/sdk/TapLoginHelperActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/taptap/sdk/d;->a(Lcom/taptap/sdk/a;Lcom/taptap/sdk/g;)V

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "permission"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {}, Lcom/taptap/sdk/d;->a()Lcom/taptap/sdk/d;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Lcom/taptap/sdk/d;->a(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
