.class final Lcom/bytedance/sdk/openadsdk/core/m$5;
.super Ljava/lang/Object;
.source "InitHelper.java"

# interfaces
.implements Lcom/bytedance/tea/crash/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/m;->g(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;Ljava/lang/Thread;)Z
    .registers 5

    .line 345
    const/4 p2, 0x0

    :try_start_1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 346
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 347
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    .line 348
    if-eqz p1, :cond_40

    .line 349
    const-class v0, Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    .line 350
    nop

    .line 351
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_31

    const-string v0, "com.bytedance.msdk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2f

    goto :goto_31

    :cond_2f
    move p1, p2

    goto :goto_32

    :cond_31
    :goto_31
    move p1, v1

    .line 352
    :goto_32
    if-eqz p1, :cond_40

    .line 353
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/e;->a()Lcom/bytedance/sdk/openadsdk/core/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e;->b()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/tea/crash/g;->a(Ljava/util/Map;)V
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_41

    .line 354
    return v1

    .line 358
    :cond_40
    goto :goto_42

    .line 357
    :catchall_41
    move-exception p1

    .line 359
    :goto_42
    return p2
.end method
