.class Lcom/umeng/analytics/process/UMProcessDBDatasSender$ReplaceCallback;
.super Ljava/lang/Object;
.source "UMProcessDBDatasSender.java"

# interfaces
.implements Lcom/umeng/commonsdk/utils/FileLockCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/process/UMProcessDBDatasSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReplaceCallback"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/process/UMProcessDBDatasSender;


# direct methods
.method private constructor <init>(Lcom/umeng/analytics/process/UMProcessDBDatasSender;)V
    .registers 2

    .line 413
    iput-object p1, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender$ReplaceCallback;->a:Lcom/umeng/analytics/process/UMProcessDBDatasSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/process/UMProcessDBDatasSender;Lcom/umeng/analytics/process/UMProcessDBDatasSender$1;)V
    .registers 3

    .line 413
    invoke-direct {p0, p1}, Lcom/umeng/analytics/process/UMProcessDBDatasSender$ReplaceCallback;-><init>(Lcom/umeng/analytics/process/UMProcessDBDatasSender;)V

    return-void
.end method


# virtual methods
.method public onFileLock(Ljava/io/File;I)Z
    .registers 3

    .line 431
    const/4 p1, 0x0

    return p1
.end method

.method public onFileLock(Ljava/lang/String;)Z
    .registers 6

    .line 416
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 417
    return v1

    .line 419
    :cond_8
    const-string v0, "ua_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_16

    .line 420
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 422
    :cond_16
    const-string v0, ".db"

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 424
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender$ReplaceCallback;->a:Lcom/umeng/analytics/process/UMProcessDBDatasSender;

    # getter for: Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->access$000(Lcom/umeng/analytics/process/UMProcessDBDatasSender;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/process/UMProcessDBHelper;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/process/UMProcessDBHelper;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v2}, Lcom/umeng/analytics/process/UMProcessDBHelper;->deleteEventDatas(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 426
    return v1
.end method

.method public onFileLock(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 3

    .line 436
    const/4 p1, 0x0

    return p1
.end method
