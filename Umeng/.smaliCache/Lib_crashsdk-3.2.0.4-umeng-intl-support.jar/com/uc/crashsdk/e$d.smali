.class final Lcom/uc/crashsdk/e$d;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/crashsdk/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field a:J

.field b:J

.field c:I

.field d:I

.field e:Z

.field f:Z

.field g:Z


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 2399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2400
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/uc/crashsdk/e$d;->a:J

    .line 2401
    iput-wide v0, p0, Lcom/uc/crashsdk/e$d;->b:J

    .line 2402
    const/4 v0, 0x0

    iput v0, p0, Lcom/uc/crashsdk/e$d;->c:I

    .line 2403
    iput v0, p0, Lcom/uc/crashsdk/e$d;->d:I

    .line 2405
    iput-boolean v0, p0, Lcom/uc/crashsdk/e$d;->e:Z

    .line 2406
    iput-boolean v0, p0, Lcom/uc/crashsdk/e$d;->f:Z

    .line 2407
    iput-boolean v0, p0, Lcom/uc/crashsdk/e$d;->g:Z

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .line 2399
    invoke-direct {p0}, Lcom/uc/crashsdk/e$d;-><init>()V

    return-void
.end method
