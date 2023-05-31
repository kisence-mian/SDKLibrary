.class public Lcom/ss/android/socialbase/downloader/m/h;
.super Ljava/util/LinkedHashMap;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;TT;>;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x4

    .line 17
    invoke-direct {p0, v0, v0}, Lcom/ss/android/socialbase/downloader/m/h;-><init>(II)V

    .line 18
    return-void
.end method

.method public constructor <init>(II)V
    .registers 5

    .prologue
    .line 21
    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 22
    invoke-virtual {p0, p2}, Lcom/ss/android/socialbase/downloader/m/h;->a(I)V

    .line 23
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    .prologue
    .line 26
    iput p1, p0, Lcom/ss/android/socialbase/downloader/m/h;->a:I

    .line 27
    return-void
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/m/h;->size()I

    move-result v0

    iget v1, p0, Lcom/ss/android/socialbase/downloader/m/h;->a:I

    if-le v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
