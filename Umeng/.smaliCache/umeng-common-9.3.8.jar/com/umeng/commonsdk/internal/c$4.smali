.class Lcom/umeng/commonsdk/internal/c$4;
.super Ljava/lang/Object;
.source "UMInternalDataProtocol.java"

# interfaces
.implements Lcom/umeng/commonsdk/listener/OnGetOaidListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/internal/c;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/commonsdk/internal/c;


# direct methods
.method constructor <init>(Lcom/umeng/commonsdk/internal/c;)V
    .registers 2

    .line 292
    iput-object p1, p0, Lcom/umeng/commonsdk/internal/c$4;->a:Lcom/umeng/commonsdk/internal/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetOaid(Ljava/lang/String;)V
    .registers 5

    .line 296
    const-string v0, "MobclickRT"

    const-string v1, "--->>> OAID\u4e91\u63a7\u53c2\u6570\u66f4\u65b0(\u4e0d\u91c7\u96c6->\u91c7\u96c6)\uff1a\u91c7\u96c6\u5b8c\u6210"

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 298
    const-string p1, "--->>> oaid\u8fd4\u56denull\u6216\u8005\u7a7a\u4e32\uff0c\u4e0d\u9700\u8981 \u4f2a\u51b7\u542f\u52a8\u3002"

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-void

    .line 302
    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/c$4;->a:Lcom/umeng/commonsdk/internal/c;

    invoke-static {v0}, Lcom/umeng/commonsdk/internal/c;->a(Lcom/umeng/commonsdk/internal/c;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "umeng_sp_oaid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_2e

    .line 305
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 306
    const-string v1, "key_umeng_sp_oaid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 307
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2e
    .catchall {:try_start_13 .. :try_end_2e} :catchall_2f

    .line 311
    :cond_2e
    goto :goto_30

    .line 310
    :catchall_2f
    move-exception p1

    .line 312
    :goto_30
    iget-object p1, p0, Lcom/umeng/commonsdk/internal/c$4;->a:Lcom/umeng/commonsdk/internal/c;

    invoke-static {p1}, Lcom/umeng/commonsdk/internal/c;->a(Lcom/umeng/commonsdk/internal/c;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x8014

    iget-object v1, p0, Lcom/umeng/commonsdk/internal/c$4;->a:Lcom/umeng/commonsdk/internal/c;

    .line 313
    invoke-static {v1}, Lcom/umeng/commonsdk/internal/c;->a(Lcom/umeng/commonsdk/internal/c;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object v1

    const/4 v2, 0x0

    .line 312
    invoke-static {p1, v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 314
    return-void
.end method
