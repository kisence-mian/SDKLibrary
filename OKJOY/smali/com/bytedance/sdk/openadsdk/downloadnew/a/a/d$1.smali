.class Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d$1;
.super Ljava/lang/Object;
.source "LibPermission.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d;->a(Landroid/app/Activity;[Ljava/lang/String;Lcom/ss/android/a/a/a/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/a/a/a/n;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d;Lcom/ss/android/a/a/a/n;[Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 78
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d$1;->c:Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d$1;->a:Lcom/ss/android/a/a/a/n;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d$1;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d$1;->a:Lcom/ss/android/a/a/a/n;

    if-eqz v0, :cond_9

    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d$1;->a:Lcom/ss/android/a/a/a/n;

    invoke-interface {v0}, Lcom/ss/android/a/a/a/n;->a()V

    .line 85
    :cond_9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d$1;->b:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/f/a;->a(Z[Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 90
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d$1;->a:Lcom/ss/android/a/a/a/n;

    if-eqz v0, :cond_a

    .line 91
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d$1;->a:Lcom/ss/android/a/a/a/n;

    invoke-interface {v0, p1}, Lcom/ss/android/a/a/a/n;->a(Ljava/lang/String;)V

    .line 94
    :cond_a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/f/a;->a(Z[Ljava/lang/String;)V

    .line 95
    return-void
.end method
