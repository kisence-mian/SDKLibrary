.class Lcom/umeng/analytics/pro/l$a;
.super Ljava/lang/Object;
.source "BackgroundMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/pro/l;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/pro/l;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/umeng/analytics/pro/l$a;->a:Lcom/umeng/analytics/pro/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 44
    iget-object v0, p0, Lcom/umeng/analytics/pro/l$a;->a:Lcom/umeng/analytics/pro/l;

    invoke-static {v0}, Lcom/umeng/analytics/pro/l;->a(Lcom/umeng/analytics/pro/l;)Z

    move-result v0

    const-string v1, "MobclickRT"

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/umeng/analytics/pro/l$a;->a:Lcom/umeng/analytics/pro/l;

    invoke-static {v0}, Lcom/umeng/analytics/pro/l;->b(Lcom/umeng/analytics/pro/l;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 45
    iget-object v0, p0, Lcom/umeng/analytics/pro/l$a;->a:Lcom/umeng/analytics/pro/l;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/umeng/analytics/pro/l;->a(Lcom/umeng/analytics/pro/l;Z)Z

    .line 46
    const-string v0, "--->>> went background."

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    nop

    :goto_1e
    iget-object v0, p0, Lcom/umeng/analytics/pro/l$a;->a:Lcom/umeng/analytics/pro/l;

    invoke-static {v0}, Lcom/umeng/analytics/pro/l;->c(Lcom/umeng/analytics/pro/l;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_41

    .line 48
    iget-object v0, p0, Lcom/umeng/analytics/pro/l$a;->a:Lcom/umeng/analytics/pro/l;

    invoke-static {v0}, Lcom/umeng/analytics/pro/l;->c(Lcom/umeng/analytics/pro/l;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/pro/m;

    invoke-interface {v0}, Lcom/umeng/analytics/pro/m;->n()V

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 51
    :cond_3c
    const-string v0, "--->>> still foreground."

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_41
    return-void
.end method
