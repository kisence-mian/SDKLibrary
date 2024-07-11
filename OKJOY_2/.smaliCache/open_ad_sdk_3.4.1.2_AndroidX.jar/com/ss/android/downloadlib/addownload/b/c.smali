.class public Lcom/ss/android/downloadlib/addownload/b/c;
.super Ljava/lang/Object;
.source "DownloadInstallInfo.java"


# static fields
.field public static a:I

.field public static b:I

.field public static c:I


# instance fields
.field private d:I

.field private e:J

.field private f:Lorg/json/JSONObject;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const/4 v0, 0x0

    sput v0, Lcom/ss/android/downloadlib/addownload/b/c;->a:I

    .line 19
    const/4 v0, 0x1

    sput v0, Lcom/ss/android/downloadlib/addownload/b/c;->b:I

    .line 23
    const/4 v0, 0x2

    sput v0, Lcom/ss/android/downloadlib/addownload/b/c;->c:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget v0, Lcom/ss/android/downloadlib/addownload/b/c;->a:I

    iput v0, p0, Lcom/ss/android/downloadlib/addownload/b/c;->d:I

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ss/android/downloadlib/addownload/b/c;->e:J

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/c;->f:Lorg/json/JSONObject;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/downloadlib/addownload/b/c;->g:I

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/c;->h:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/c;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/ss/android/downloadlib/addownload/b/c;
    .registers 2

    .line 70
    iput p1, p0, Lcom/ss/android/downloadlib/addownload/b/c;->d:I

    .line 71
    return-object p0
.end method

.method public a()Z
    .registers 3

    .line 35
    iget v0, p0, Lcom/ss/android/downloadlib/addownload/b/c;->d:I

    sget v1, Lcom/ss/android/downloadlib/addownload/b/c;->b:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public b()I
    .registers 2

    .line 44
    iget v0, p0, Lcom/ss/android/downloadlib/addownload/b/c;->g:I

    return v0
.end method

.method public b(I)Lcom/ss/android/downloadlib/addownload/b/c;
    .registers 2

    .line 88
    iput p1, p0, Lcom/ss/android/downloadlib/addownload/b/c;->g:I

    .line 89
    return-object p0
.end method
