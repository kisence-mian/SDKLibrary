.class final Lcom/anythink/core/b/a/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/a/f;->a(Landroid/content/Context;Lcom/anythink/core/api/ATGDPRAuthCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/api/ATGDPRAuthCallback;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/anythink/core/b/a/f;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/a/f;Lcom/anythink/core/api/ATGDPRAuthCallback;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 154
    iput-object p1, p0, Lcom/anythink/core/b/a/f$1;->c:Lcom/anythink/core/b/a/f;

    iput-object p2, p0, Lcom/anythink/core/b/a/f$1;->a:Lcom/anythink/core/api/ATGDPRAuthCallback;

    iput-object p3, p0, Lcom/anythink/core/b/a/f$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 157
    iget-object v0, p0, Lcom/anythink/core/b/a/f$1;->a:Lcom/anythink/core/api/ATGDPRAuthCallback;

    sput-object v0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->mCallback:Lcom/anythink/core/api/ATGDPRAuthCallback;

    .line 158
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/anythink/core/b/a/f$1;->b:Landroid/content/Context;

    const-class v2, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 160
    iget-object v1, p0, Lcom/anythink/core/b/a/f$1;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 161
    return-void
.end method
