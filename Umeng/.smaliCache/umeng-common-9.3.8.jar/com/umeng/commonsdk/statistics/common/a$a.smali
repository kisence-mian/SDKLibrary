.class final Lcom/umeng/commonsdk/statistics/common/a$a;
.super Ljava/lang/Object;
.source "AdvertisingId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/common/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/common/a$a;->a:Ljava/lang/String;

    .line 35
    iput-boolean p2, p0, Lcom/umeng/commonsdk/statistics/common/a$a;->b:Z

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/umeng/commonsdk/statistics/common/a$a;)Ljava/lang/String;
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/a$a;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/common/a$a;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 44
    iget-boolean v0, p0, Lcom/umeng/commonsdk/statistics/common/a$a;->b:Z

    return v0
.end method