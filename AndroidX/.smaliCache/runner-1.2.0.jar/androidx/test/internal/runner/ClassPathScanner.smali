.class public Landroidx/test/internal/runner/ClassPathScanner;
.super Ljava/lang/Object;
.source "ClassPathScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/internal/runner/ClassPathScanner$ExcludeClassNamesFilter;,
        Landroidx/test/internal/runner/ClassPathScanner$ExcludePackageNameFilter;,
        Landroidx/test/internal/runner/ClassPathScanner$InclusivePackageNamesFilter;,
        Landroidx/test/internal/runner/ClassPathScanner$ExternalClassNameFilter;,
        Landroidx/test/internal/runner/ClassPathScanner$ChainedClassNameFilter;,
        Landroidx/test/internal/runner/ClassPathScanner$AcceptAllFilter;,
        Landroidx/test/internal/runner/ClassPathScanner$ClassNameFilter;
    }
.end annotation


# instance fields
.field private final classPath:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paths"
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

    .line 177
    .local p1, "paths":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/runner/ClassPathScanner;->classPath:Ljava/util/Set;

    .line 178
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 179
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .registers 3
    .param p1, "paths"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paths"
        }
    .end annotation

    .line 169
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/test/internal/runner/ClassPathScanner;-><init>(Ljava/util/Collection;)V

    .line 170
    return-void
.end method

.method private addEntriesFromPath(Ljava/util/Set;Ljava/lang/String;Landroidx/test/internal/runner/ClassPathScanner$ClassNameFilter;)V
    .registers 8
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "filter"    # Landroidx/test/internal/runner/ClassPathScanner$ClassNameFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "entryNames",
            "path",
            "filter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroidx/test/internal/runner/ClassPathScanner$ClassNameFilter;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    .local p1, "entryNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 190
    .local v0, "dexFile":Ldalvik/system/DexFile;
    :try_start_1
    new-instance v1, Ldalvik/system/DexFile;

    invoke-direct {v1, p2}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 191
    invoke-virtual {p0, v0}, Landroidx/test/internal/runner/ClassPathScanner;->getDexEntries(Ldalvik/system/DexFile;)Ljava/util/Enumeration;

    move-result-object v1

    .line 192
    .local v1, "classNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 193
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 194
    .local v2, "className":Ljava/lang/String;
    invoke-interface {p3, v2}, Landroidx/test/internal/runner/ClassPathScanner$ClassNameFilter;->accept(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 195
    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_26

    .line 197
    .end local v2    # "className":Ljava/lang/String;
    :cond_20
    goto :goto_b

    .line 199
    .end local v1    # "classNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_21
    nop

    .line 200
    invoke-virtual {v0}, Ldalvik/system/DexFile;->close()V

    .line 203
    return-void

    .line 199
    :catchall_26
    move-exception v1

    if-eqz v0, :cond_2c

    .line 200
    invoke-virtual {v0}, Ldalvik/system/DexFile;->close()V

    :cond_2c
    goto :goto_2e

    :goto_2d
    throw v1

    :goto_2e
    goto :goto_2d
.end method


# virtual methods
.method public getClassPathEntries(Landroidx/test/internal/runner/ClassPathScanner$ClassNameFilter;)Ljava/util/Set;
    .registers 5
    .param p1, "filter"    # Landroidx/test/internal/runner/ClassPathScanner$ClassNameFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/internal/runner/ClassPathScanner$ClassNameFilter;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 224
    .local v0, "entryNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Landroidx/test/internal/runner/ClassPathScanner;->classPath:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 225
    .local v2, "path":Ljava/lang/String;
    invoke-direct {p0, v0, v2, p1}, Landroidx/test/internal/runner/ClassPathScanner;->addEntriesFromPath(Ljava/util/Set;Ljava/lang/String;Landroidx/test/internal/runner/ClassPathScanner$ClassNameFilter;)V

    .line 226
    .end local v2    # "path":Ljava/lang/String;
    goto :goto_b

    .line 227
    :cond_1b
    return-object v0
.end method

.method getDexEntries(Ldalvik/system/DexFile;)Ljava/util/Enumeration;
    .registers 3
    .param p1, "dexFile"    # Ldalvik/system/DexFile;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dexFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/DexFile;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 213
    invoke-virtual {p1}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method
