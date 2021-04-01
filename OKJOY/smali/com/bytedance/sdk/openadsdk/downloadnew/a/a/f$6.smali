.class Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$6;
.super Ljava/lang/Object;
.source "LibUIFactory.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;->c(Lcom/ss/android/a/a/c/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/a/a/c/c;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;Lcom/ss/android/a/a/c/c;)V
    .registers 3

    .prologue
    .line 156
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$6;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$6;->a:Lcom/ss/android/a/a/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 159
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$6;->a:Lcom/ss/android/a/a/c/c;

    iget-object v0, v0, Lcom/ss/android/a/a/c/c;->h:Lcom/ss/android/a/a/c/c$b;

    if-eqz v0, :cond_14

    .line 160
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$6;->a:Lcom/ss/android/a/a/c/c;

    iget-object v0, v0, Lcom/ss/android/a/a/c/c;->h:Lcom/ss/android/a/a/c/c$b;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$6;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$a;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;)V

    invoke-interface {v0, v1}, Lcom/ss/android/a/a/c/c$b;->a(Landroid/content/DialogInterface;)V

    .line 162
    :cond_14
    return-void
.end method

.method public b()V
    .registers 4

    .prologue
    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$6;->a:Lcom/ss/android/a/a/c/c;

    iget-object v0, v0, Lcom/ss/android/a/a/c/c;->h:Lcom/ss/android/a/a/c/c$b;

    if-eqz v0, :cond_14

    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$6;->a:Lcom/ss/android/a/a/c/c;

    iget-object v0, v0, Lcom/ss/android/a/a/c/c;->h:Lcom/ss/android/a/a/c/c$b;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$6;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$a;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;)V

    invoke-interface {v0, v1}, Lcom/ss/android/a/a/c/c$b;->b(Landroid/content/DialogInterface;)V

    .line 169
    :cond_14
    return-void
.end method

.method public c()V
    .registers 4

    .prologue
    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$6;->a:Lcom/ss/android/a/a/c/c;

    iget-object v0, v0, Lcom/ss/android/a/a/c/c;->h:Lcom/ss/android/a/a/c/c$b;

    if-eqz v0, :cond_14

    .line 174
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$6;->a:Lcom/ss/android/a/a/c/c;

    iget-object v0, v0, Lcom/ss/android/a/a/c/c;->h:Lcom/ss/android/a/a/c/c$b;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$6;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f$a;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/f;)V

    invoke-interface {v0, v1}, Lcom/ss/android/a/a/c/c$b;->c(Landroid/content/DialogInterface;)V

    .line 176
    :cond_14
    return-void
.end method
