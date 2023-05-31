.class Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;
.super Ljava/lang/Object;
.source "SafeIterableMap.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Landroid/arch/core/internal/SafeIterableMap$SupportRemove;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/core/internal/SafeIterableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IteratorWithAdditions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;",
        "Landroid/arch/core/internal/SafeIterableMap$SupportRemove",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private mBeforeStart:Z

.field private mCurrent:Landroid/arch/core/internal/SafeIterableMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/core/internal/SafeIterableMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/arch/core/internal/SafeIterableMap;


# direct methods
.method private constructor <init>(Landroid/arch/core/internal/SafeIterableMap;)V
    .registers 3

    .prologue
    .line 301
    .local p0, "this":Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;, "Landroid/arch/core/internal/SafeIterableMap<TK;TV;>.IteratorWithAdditions;"
    iput-object p1, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->this$0:Landroid/arch/core/internal/SafeIterableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mBeforeStart:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/arch/core/internal/SafeIterableMap;Landroid/arch/core/internal/SafeIterableMap$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/arch/core/internal/SafeIterableMap;
    .param p2, "x1"    # Landroid/arch/core/internal/SafeIterableMap$1;

    .prologue
    .line 301
    .local p0, "this":Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;, "Landroid/arch/core/internal/SafeIterableMap<TK;TV;>.IteratorWithAdditions;"
    invoke-direct {p0, p1}, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;-><init>(Landroid/arch/core/internal/SafeIterableMap;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 4

    .prologue
    .local p0, "this":Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;, "Landroid/arch/core/internal/SafeIterableMap<TK;TV;>.IteratorWithAdditions;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 315
    iget-boolean v2, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mBeforeStart:Z

    if-eqz v2, :cond_11

    .line 316
    iget-object v2, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->this$0:Landroid/arch/core/internal/SafeIterableMap;

    # getter for: Landroid/arch/core/internal/SafeIterableMap;->mStart:Landroid/arch/core/internal/SafeIterableMap$Entry;
    invoke-static {v2}, Landroid/arch/core/internal/SafeIterableMap;->access$100(Landroid/arch/core/internal/SafeIterableMap;)Landroid/arch/core/internal/SafeIterableMap$Entry;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 318
    :cond_e
    :goto_e
    return v0

    :cond_f
    move v0, v1

    .line 316
    goto :goto_e

    .line 318
    :cond_11
    iget-object v2, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mCurrent:Landroid/arch/core/internal/SafeIterableMap$Entry;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mCurrent:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iget-object v2, v2, Landroid/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroid/arch/core/internal/SafeIterableMap$Entry;

    if-nez v2, :cond_e

    :cond_1b
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 301
    .local p0, "this":Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;, "Landroid/arch/core/internal/SafeIterableMap<TK;TV;>.IteratorWithAdditions;"
    invoke-virtual {p0}, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 323
    .local p0, "this":Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;, "Landroid/arch/core/internal/SafeIterableMap<TK;TV;>.IteratorWithAdditions;"
    iget-boolean v0, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mBeforeStart:Z

    if-eqz v0, :cond_12

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mBeforeStart:Z

    .line 325
    iget-object v0, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->this$0:Landroid/arch/core/internal/SafeIterableMap;

    # getter for: Landroid/arch/core/internal/SafeIterableMap;->mStart:Landroid/arch/core/internal/SafeIterableMap$Entry;
    invoke-static {v0}, Landroid/arch/core/internal/SafeIterableMap;->access$100(Landroid/arch/core/internal/SafeIterableMap;)Landroid/arch/core/internal/SafeIterableMap$Entry;

    move-result-object v0

    iput-object v0, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mCurrent:Landroid/arch/core/internal/SafeIterableMap$Entry;

    .line 329
    :goto_f
    iget-object v0, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mCurrent:Landroid/arch/core/internal/SafeIterableMap$Entry;

    return-object v0

    .line 327
    :cond_12
    iget-object v0, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mCurrent:Landroid/arch/core/internal/SafeIterableMap$Entry;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mCurrent:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iget-object v0, v0, Landroid/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroid/arch/core/internal/SafeIterableMap$Entry;

    :goto_1a
    iput-object v0, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mCurrent:Landroid/arch/core/internal/SafeIterableMap$Entry;

    goto :goto_f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public supportRemove(Landroid/arch/core/internal/SafeIterableMap$Entry;)V
    .registers 3
    .param p1    # Landroid/arch/core/internal/SafeIterableMap$Entry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/core/internal/SafeIterableMap$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "this":Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;, "Landroid/arch/core/internal/SafeIterableMap<TK;TV;>.IteratorWithAdditions;"
    .local p1, "entry":Landroid/arch/core/internal/SafeIterableMap$Entry;, "Landroid/arch/core/internal/SafeIterableMap$Entry<TK;TV;>;"
    iget-object v0, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mCurrent:Landroid/arch/core/internal/SafeIterableMap$Entry;

    if-ne p1, v0, :cond_11

    .line 308
    iget-object v0, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mCurrent:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iget-object v0, v0, Landroid/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iput-object v0, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mCurrent:Landroid/arch/core/internal/SafeIterableMap$Entry;

    .line 309
    iget-object v0, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mCurrent:Landroid/arch/core/internal/SafeIterableMap$Entry;

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_f
    iput-boolean v0, p0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->mBeforeStart:Z

    .line 311
    :cond_11
    return-void

    .line 309
    :cond_12
    const/4 v0, 0x0

    goto :goto_f
.end method
