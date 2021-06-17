.class final Lcom/umeng/common/b$a;
.super Ljava/lang/Object;
.source "SPHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/common/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/umeng/common/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Lcom/umeng/common/b;

    invoke-direct {v0}, Lcom/umeng/common/b;-><init>()V

    sput-object v0, Lcom/umeng/common/b$a;->a:Lcom/umeng/common/b;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/umeng/common/b;
    .registers 1

    .line 25
    sget-object v0, Lcom/umeng/common/b$a;->a:Lcom/umeng/common/b;

    return-object v0
.end method
