.class public final Lcom/efs/sdk/base/a/i/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "https://errlog.umeng.com/api/crashsdk/logcollect"

    iput-object v0, p0, Lcom/efs/sdk/base/a/i/c;->a:Ljava/lang/String;

    .line 51
    const-string v0, "28ef1713347d"

    iput-object v0, p0, Lcom/efs/sdk/base/a/i/c;->b:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    iget-object v0, v0, Lcom/efs/sdk/base/a/c/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/efs/sdk/base/a/h/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/efs/sdk/base/a/i/c;->c:Ljava/lang/String;

    .line 60
    return-void
.end method
