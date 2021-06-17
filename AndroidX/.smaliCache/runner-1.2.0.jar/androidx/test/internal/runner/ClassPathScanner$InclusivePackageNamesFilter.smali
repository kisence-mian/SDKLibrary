.class public Landroidx/test/internal/runner/ClassPathScanner$InclusivePackageNamesFilter;
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
    name = "InclusivePackageNamesFilter"
.end annotation


# instance fields
.field private final pkgNames:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkgNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 102
    .local p1, "pkgNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/test/internal/runner/ClassPathScanner$InclusivePackageNamesFilter;->pkgNames:Ljava/util/Collection;

    .line 104
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 105
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 106
    iget-object v2, p0, Landroidx/test/internal/runner/ClassPathScanner$InclusivePackageNamesFilter;->pkgNames:Ljava/util/Collection;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v4, "%s."

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 108
    :cond_38
    iget-object v2, p0, Landroidx/test/internal/runner/ClassPathScanner$InclusivePackageNamesFilter;->pkgNames:Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v1    # "packageName":Ljava/lang/String;
    :goto_3d
    goto :goto_12

    .line 111
    :cond_3e
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pathName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pathName"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Landroidx/test/internal/runner/ClassPathScanner$InclusivePackageNamesFilter;->pkgNames:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 117
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 118
    const/4 v0, 0x1

    return v0

    .line 120
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1a
    goto :goto_6

    .line 121
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method
