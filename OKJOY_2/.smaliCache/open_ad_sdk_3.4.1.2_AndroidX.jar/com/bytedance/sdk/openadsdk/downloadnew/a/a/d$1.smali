.class Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d$1;
.super Ljava/lang/Object;
.source "LibPermission.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d;->a(Landroid/app/Activity;[Ljava/lang/String;Lcom/ss/android/a/a/a/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/a/a/a/q;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d;Lcom/ss/android/a/a/a/q;[Ljava/lang/String;)V
    .registers 4

    .line 78
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d$1;->c:Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d$1;->a:Lcom/ss/android/a/a/a/q;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d$1;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d$1;->a:Lcom/ss/android/a/a/a/q;

    if-eqz v0, :cond_7

    .line 82
    invoke-interface {v0}, Lcom/ss/android/a/a/a/q;->a()V

    .line 85
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a;->a()Lcom/bytedance/sdk/openadsdk/g/a;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d$1;->b:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/g/a;->a(Z[Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    .line 90
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d$1;->a:Lcom/ss/android/a/a/a/q;

    if-eqz v0, :cond_7

    .line 91
    invoke-interface {v0, p1}, Lcom/ss/android/a/a/a/q;->a(Ljava/lang/String;)V

    .line 94
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a;->a()Lcom/bytedance/sdk/openadsdk/g/a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/g/a;->a(Z[Ljava/lang/String;)V

    .line 95
    return-void
.end method
