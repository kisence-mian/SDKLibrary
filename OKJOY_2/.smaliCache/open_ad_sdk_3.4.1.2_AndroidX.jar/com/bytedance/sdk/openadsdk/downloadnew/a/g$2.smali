.class final Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$2;
.super Ljava/lang/Object;
.source "LibHolder.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->b(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/utils/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field final synthetic d:J


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/utils/a;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;J)V
    .registers 6

    .line 210
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$2;->a:Lcom/bytedance/sdk/openadsdk/utils/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$2;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$2;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .line 214
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a()Z

    move-result v0

    .line 215
    if-nez v0, :cond_15

    .line 216
    const-string v0, "LibHolder"

    const-string v1, "\u9501\u5c4f\u4e0d\u6267\u884c\u81ea\u542f\u52a8\u8c03\u8d77"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$2;->a:Lcom/bytedance/sdk/openadsdk/utils/a;

    if-eqz v0, :cond_14

    .line 218
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/a;->b()V

    .line 220
    :cond_14
    return-void

    .line 222
    :cond_15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$2;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 223
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$2;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$2;->d:J

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$2;->a:Lcom/bytedance/sdk/openadsdk/utils/a;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$2;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;JLcom/bytedance/sdk/openadsdk/utils/a;Ljava/lang/String;)V

    .line 225
    :cond_28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$2;->a:Lcom/bytedance/sdk/openadsdk/utils/a;

    if-eqz v0, :cond_2f

    .line 226
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/a;->b()V

    .line 228
    :cond_2f
    return-void
.end method

.method public b()V
    .registers 1

    .line 234
    return-void
.end method

.method public c()V
    .registers 1

    .line 239
    return-void
.end method

.method public d()V
    .registers 1

    .line 243
    return-void
.end method

.method public e()V
    .registers 1

    .line 247
    return-void
.end method

.method public f()V
    .registers 1

    .line 251
    return-void
.end method
