.class Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;
.super Ljava/lang/Object;
.source "TTMd5.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttmd5/TTMd5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TTMd5Args"
.end annotation


# instance fields
.field private realMd5:Ljava/lang/String;

.field private sampleCount:I

.field private sampleSize:J

.field private versionMain:I

.field private versionSub:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/ttmd5/TTMd5$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/ss/android/ttmd5/TTMd5$1;

    .line 418
    invoke-direct {p0}, Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;)I
    .registers 2
    .param p0, "x0"    # Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;

    .line 418
    iget v0, p0, Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->versionMain:I

    return v0
.end method

.method static synthetic access$002(Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;I)I
    .registers 2
    .param p0, "x0"    # Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;
    .param p1, "x1"    # I

    .line 418
    iput p1, p0, Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->versionMain:I

    return p1
.end method

.method static synthetic access$100(Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;)I
    .registers 2
    .param p0, "x0"    # Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;

    .line 418
    iget v0, p0, Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->sampleCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;I)I
    .registers 2
    .param p0, "x0"    # Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;
    .param p1, "x1"    # I

    .line 418
    iput p1, p0, Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->sampleCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;)J
    .registers 3
    .param p0, "x0"    # Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;

    .line 418
    iget-wide v0, p0, Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->sampleSize:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;J)J
    .registers 3
    .param p0, "x0"    # Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;
    .param p1, "x1"    # J

    .line 418
    iput-wide p1, p0, Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->sampleSize:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;)I
    .registers 2
    .param p0, "x0"    # Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;

    .line 418
    iget v0, p0, Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->versionSub:I

    return v0
.end method

.method static synthetic access$302(Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;I)I
    .registers 2
    .param p0, "x0"    # Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;
    .param p1, "x1"    # I

    .line 418
    iput p1, p0, Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->versionSub:I

    return p1
.end method

.method static synthetic access$400(Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;

    .line 418
    iget-object v0, p0, Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->realMd5:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;
    .param p1, "x1"    # Ljava/lang/String;

    .line 418
    iput-object p1, p0, Lcom/ss/android/ttmd5/TTMd5$TTMd5Args;->realMd5:Ljava/lang/String;

    return-object p1
.end method
