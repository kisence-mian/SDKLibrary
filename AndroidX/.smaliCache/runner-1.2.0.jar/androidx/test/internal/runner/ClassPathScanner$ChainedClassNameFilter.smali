.class public Landroidx/test/internal/runner/ClassPathScanner$ChainedClassNameFilter;
.super Ljava/lang/Object;
.source "ClassPathScanner.java"

# interfaces
.implements Landroidx/test/internal/runner/ClassPathScanner$ClassNameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/runner/ClassPathScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChainedClassNameFilter"
.end annotation


# instance fields
.field private final filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/test/internal/runner/ClassPathScanner$ClassNameFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/runner/ClassPathScanner$ChainedClassNameFilter;->filters:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;)Z
    .registers 5
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "className"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Landroidx/test/internal/runner/ClassPathScanner$ChainedClassNameFilter;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/internal/runner/ClassPathScanner$ClassNameFilter;

    .line 80
    .local v1, "filter":Landroidx/test/internal/runner/ClassPathScanner$ClassNameFilter;
    invoke-interface {v1, p1}, Landroidx/test/internal/runner/ClassPathScanner$ClassNameFilter;->accept(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 81
    const/4 v0, 0x0

    return v0

    .line 83
    .end local v1    # "filter":Landroidx/test/internal/runner/ClassPathScanner$ClassNameFilter;
    :cond_1a
    goto :goto_6

    .line 84
    :cond_1b
    const/4 v0, 0x1

    return v0
.end method

.method public add(Landroidx/test/internal/runner/ClassPathScanner$ClassNameFilter;)V
    .registers 3
    .param p1, "filter"    # Landroidx/test/internal/runner/ClassPathScanner$ClassNameFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Landroidx/test/internal/runner/ClassPathScanner$ChainedClassNameFilter;->filters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public varargs addAll([Landroidx/test/internal/runner/ClassPathScanner$ClassNameFilter;)V
    .registers 4
    .param p1, "filters"    # [Landroidx/test/internal/runner/ClassPathScanner$ClassNameFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filters"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Landroidx/test/internal/runner/ClassPathScanner$ChainedClassNameFilter;->filters:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    return-void
.end method
