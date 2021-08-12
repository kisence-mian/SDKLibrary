.class public Lcom/ss/android/socialbase/downloader/i/g;
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
        "Ljava/util/LinkedHashMap<",
        "TK;TT;>;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    const/4 v0, 0x4

    invoke-direct {p0, v0, v0}, Lcom/ss/android/socialbase/downloader/i/g;-><init>(II)V

    .line 18
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .line 21
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/socialbase/downloader/i/g;-><init>(IIZ)V

    .line 22
    return-void
.end method

.method public constructor <init>(IIZ)V
    .registers 5

    .line 25
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0, p3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 26
    invoke-virtual {p0, p2}, Lcom/ss/android/socialbase/downloader/i/g;->a(I)V

    .line 27
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    .line 30
    iput p1, p0, Lcom/ss/android/socialbase/downloader/i/g;->a:I

    .line 31
    return-void
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TT;>;)Z"
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/i/g;->size()I

    move-result p1

    iget v0, p0, Lcom/ss/android/socialbase/downloader/i/g;->a:I

    if-le p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method
