.class Lcom/umeng/analytics/process/UMProcessDBDatasSender$1;
.super Ljava/lang/Object;
.source "UMProcessDBDatasSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/process/UMProcessDBDatasSender;->workEvent(Ljava/lang/Object;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/process/UMProcessDBDatasSender;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/process/UMProcessDBDatasSender;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender$1;->a:Lcom/umeng/analytics/process/UMProcessDBDatasSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 94
    const-string v0, "MobclickRT"

    const-string v1, "--->>> call processDBToMain start."

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender$1;->a:Lcom/umeng/analytics/process/UMProcessDBDatasSender;

    # getter for: Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->access$000(Lcom/umeng/analytics/process/UMProcessDBDatasSender;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/process/UMProcessDBHelper;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/process/UMProcessDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/process/UMProcessDBHelper;->processDBToMain()V

    .line 97
    return-void
.end method
