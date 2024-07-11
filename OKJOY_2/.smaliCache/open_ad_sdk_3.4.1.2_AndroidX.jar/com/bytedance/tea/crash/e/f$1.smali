.class final Lcom/bytedance/tea/crash/e/f$1;
.super Ljava/lang/Object;
.source "LooperMessageManager.java"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/tea/crash/e/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .registers 4

    .line 46
    if-nez p1, :cond_3

    .line 47
    return-void

    .line 49
    :cond_3
    const-string v0, ">>>>> Dispatching"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 50
    invoke-static {}, Lcom/bytedance/tea/crash/e/f;->a()Lcom/bytedance/tea/crash/e/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/tea/crash/e/f;->a(Ljava/lang/String;)V

    goto :goto_22

    .line 51
    :cond_13
    const-string v0, "<<<<< Finished"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 52
    invoke-static {}, Lcom/bytedance/tea/crash/e/f;->a()Lcom/bytedance/tea/crash/e/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/tea/crash/e/f;->b(Ljava/lang/String;)V

    .line 54
    :cond_22
    :goto_22
    invoke-static {}, Lcom/bytedance/tea/crash/e/f;->c()Landroid/util/Printer;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-static {}, Lcom/bytedance/tea/crash/e/f;->c()Landroid/util/Printer;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/tea/crash/e/f;->d()Landroid/util/Printer;

    move-result-object v1

    if-eq v0, v1, :cond_39

    .line 55
    invoke-static {}, Lcom/bytedance/tea/crash/e/f;->c()Landroid/util/Printer;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 57
    :cond_39
    return-void
.end method
