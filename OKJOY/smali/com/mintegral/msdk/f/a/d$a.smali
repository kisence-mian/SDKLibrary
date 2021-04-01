.class final Lcom/mintegral/msdk/f/a/d$a;
.super Ljava/lang/Object;
.source "Files.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/f/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/mintegral/msdk/f/a/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 8

    .prologue
    .line 74
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    .line 1078
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 1082
    cmp-long v4, v0, v2

    if-gez v4, :cond_12

    const/4 v0, -0x1

    :goto_11
    return v0

    :cond_12
    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    const/4 v0, 0x0

    goto :goto_11

    :cond_18
    const/4 v0, 0x1

    .line 74
    goto :goto_11
.end method
