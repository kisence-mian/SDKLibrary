.class Lcom/umeng/analytics/process/UMProcessDBHelper$InsertEventCallback;
.super Ljava/lang/Object;
.source "UMProcessDBHelper.java"

# interfaces
.implements Lcom/umeng/commonsdk/utils/FileLockCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/process/UMProcessDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertEventCallback"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/process/UMProcessDBHelper;


# direct methods
.method private constructor <init>(Lcom/umeng/analytics/process/UMProcessDBHelper;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/umeng/analytics/process/UMProcessDBHelper$InsertEventCallback;->a:Lcom/umeng/analytics/process/UMProcessDBHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/process/UMProcessDBHelper;Lcom/umeng/analytics/process/UMProcessDBHelper$1;)V
    .registers 3

    .line 46
    invoke-direct {p0, p1}, Lcom/umeng/analytics/process/UMProcessDBHelper$InsertEventCallback;-><init>(Lcom/umeng/analytics/process/UMProcessDBHelper;)V

    return-void
.end method


# virtual methods
.method public onFileLock(Ljava/io/File;I)Z
    .registers 3

    .line 54
    const/4 p1, 0x0

    return p1
.end method

.method public onFileLock(Ljava/lang/String;)Z
    .registers 2

    .line 49
    const/4 p1, 0x0

    return p1
.end method

.method public onFileLock(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 7

    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 60
    return v1

    .line 63
    :cond_8
    const-string v0, "ua_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_16

    .line 64
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 66
    :cond_16
    const-string v0, ".db"

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 68
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper$InsertEventCallback;->a:Lcom/umeng/analytics/process/UMProcessDBHelper;

    check-cast p2, Lorg/json/JSONArray;

    invoke-virtual {v0, p1, p2}, Lcom/umeng/analytics/process/UMProcessDBHelper;->insertEvents(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 69
    return v1
.end method