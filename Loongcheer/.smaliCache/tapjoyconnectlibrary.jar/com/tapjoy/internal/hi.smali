.class public abstract Lcom/tapjoy/internal/hi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field c:J

.field d:Z

.field public e:Lcom/tapjoy/internal/gu;

.field public f:Ljava/lang/String;

.field g:Lcom/tapjoy/internal/fr;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 45
    invoke-static {p1}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 46
    return-void

    .line 49
    :cond_7
    :try_start_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 50
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_16

    .line 54
    return-void

    .line 51
    :catch_16
    move-exception p0

    .line 53
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/tapjoy/internal/hc;Lcom/tapjoy/internal/fx;)V
.end method

.method public abstract b()V
.end method

.method public c()Z
    .registers 2

    .line 31
    const/4 v0, 0x1

    return v0
.end method
