.class Lcom/umeng/analytics/process/UMProcessDBDatasSender$ConstructMessageCallback;
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
    name = "ConstructMessageCallback"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/process/UMProcessDBDatasSender;


# direct methods
.method private constructor <init>(Lcom/umeng/analytics/process/UMProcessDBDatasSender;)V
    .registers 2

    .line 361
    iput-object p1, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender$ConstructMessageCallback;->a:Lcom/umeng/analytics/process/UMProcessDBDatasSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/process/UMProcessDBDatasSender;Lcom/umeng/analytics/process/UMProcessDBDatasSender$1;)V
    .registers 3

    .line 361
    invoke-direct {p0, p1}, Lcom/umeng/analytics/process/UMProcessDBDatasSender$ConstructMessageCallback;-><init>(Lcom/umeng/analytics/process/UMProcessDBDatasSender;)V

    return-void
.end method


# virtual methods
.method public onFileLock(Ljava/io/File;I)Z
    .registers 3

    .line 388
    const/4 p1, 0x0

    return p1
.end method

.method public onFileLock(Ljava/lang/String;)Z
    .registers 5

    .line 365
    iget-object p1, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender$ConstructMessageCallback;->a:Lcom/umeng/analytics/process/UMProcessDBDatasSender;

    # getter for: Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->access$000(Lcom/umeng/analytics/process/UMProcessDBDatasSender;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->maxDataSpace(Landroid/content/Context;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->setupReportData(J)Lorg/json/JSONObject;

    move-result-object p1

    .line 367
    const/4 v0, 0x1

    if-eqz p1, :cond_46

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-ge v1, v0, :cond_18

    goto :goto_46

    .line 371
    :cond_18
    const-string v1, "header"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 372
    const-string v2, "content"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 374
    iget-object v2, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender$ConstructMessageCallback;->a:Lcom/umeng/analytics/process/UMProcessDBDatasSender;

    # getter for: Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->access$000(Lcom/umeng/analytics/process/UMProcessDBDatasSender;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_45

    if-eqz v1, :cond_45

    if-eqz p1, :cond_45

    .line 376
    iget-object v2, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender$ConstructMessageCallback;->a:Lcom/umeng/analytics/process/UMProcessDBDatasSender;

    # getter for: Lcom/umeng/analytics/process/UMProcessDBDatasSender;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->access$000(Lcom/umeng/analytics/process/UMProcessDBDatasSender;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, p1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 378
    if-eqz p1, :cond_45

    .line 379
    iget-object v1, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender$ConstructMessageCallback;->a:Lcom/umeng/analytics/process/UMProcessDBDatasSender;

    invoke-virtual {v1, p1}, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->removeCacheData(Ljava/lang/Object;)V

    .line 383
    :cond_45
    return v0

    .line 368
    :cond_46
    :goto_46
    return v0
.end method

.method public onFileLock(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 3

    .line 392
    const/4 p1, 0x0

    return p1
.end method
