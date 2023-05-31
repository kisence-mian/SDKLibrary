.class public final Lcom/tds/common/reactor/exceptions/CompositeException;
.super Ljava/lang/RuntimeException;
.source "CompositeException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/reactor/exceptions/CompositeException$CompositeExceptionCausalChain;,
        Lcom/tds/common/reactor/exceptions/CompositeException$WrappedPrintWriter;,
        Lcom/tds/common/reactor/exceptions/CompositeException$WrappedPrintStream;,
        Lcom/tds/common/reactor/exceptions/CompositeException$PrintStreamOrWriter;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x29ffcc6947b49592L


# instance fields
.field private cause:Ljava/lang/Throwable;

.field private final exceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 8
    .param p1, "messagePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    .local p2, "errors":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Throwable;>;"
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 43
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 44
    .local v0, "deDupedExceptions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v1, "localExceptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    if-eqz p2, :cond_3e

    .line 46
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    .line 47
    .local v3, "ex":Ljava/lang/Throwable;
    instance-of v4, v3, Lcom/tds/common/reactor/exceptions/CompositeException;

    if-eqz v4, :cond_2e

    .line 48
    move-object v4, v3

    check-cast v4, Lcom/tds/common/reactor/exceptions/CompositeException;

    invoke-virtual {v4}, Lcom/tds/common/reactor/exceptions/CompositeException;->getExceptions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_3c

    .line 50
    :cond_2e
    if-eqz v3, :cond_34

    .line 51
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 53
    :cond_34
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    .end local v3    # "ex":Ljava/lang/Throwable;
    :goto_3c
    goto :goto_13

    :cond_3d
    goto :goto_46

    .line 57
    :cond_3e
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    :goto_46
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/tds/common/reactor/exceptions/CompositeException;->exceptions:Ljava/util/List;

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exceptions occurred. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tds/common/reactor/exceptions/CompositeException;->message:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 72
    .local p1, "errors":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Throwable;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/tds/common/reactor/exceptions/CompositeException;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    .line 73
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Throwable;)V
    .registers 8
    .param p1, "errors"    # [Ljava/lang/Throwable;

    .line 80
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 81
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 82
    .local v0, "deDupedExceptions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v1, "localExceptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    if-eqz p1, :cond_35

    .line 84
    array-length v2, p1

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_3d

    aget-object v4, p1, v3

    .line 85
    .local v4, "ex":Ljava/lang/Throwable;
    instance-of v5, v4, Lcom/tds/common/reactor/exceptions/CompositeException;

    if-eqz v5, :cond_24

    .line 86
    move-object v5, v4

    check-cast v5, Lcom/tds/common/reactor/exceptions/CompositeException;

    invoke-virtual {v5}, Lcom/tds/common/reactor/exceptions/CompositeException;->getExceptions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_32

    .line 88
    :cond_24
    if-eqz v4, :cond_2a

    .line 89
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 91
    :cond_2a
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    .end local v4    # "ex":Ljava/lang/Throwable;
    :goto_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 95
    :cond_35
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_3d
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 99
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/tds/common/reactor/exceptions/CompositeException;->exceptions:Ljava/util/List;

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exceptions occurred. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tds/common/reactor/exceptions/CompositeException;->message:Ljava/lang/String;

    .line 101
    return-void
.end method

.method private appendStackTrace(Ljava/lang/StringBuilder;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 10
    .param p1, "b"    # Ljava/lang/StringBuilder;
    .param p2, "ex"    # Ljava/lang/Throwable;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 208
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_27

    aget-object v4, v0, v3

    .line 210
    .local v4, "stackElement":Ljava/lang/StackTraceElement;
    const-string v5, "\t\tat "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    .end local v4    # "stackElement":Ljava/lang/StackTraceElement;
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 212
    :cond_27
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 213
    const-string v0, "\tCaused by: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/tds/common/reactor/exceptions/CompositeException;->appendStackTrace(Ljava/lang/StringBuilder;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 216
    :cond_3b
    return-void
.end method

.method private getListOfCauses(Ljava/lang/Throwable;)Ljava/util/List;
    .registers 5
    .param p1, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 278
    .local v1, "root":Ljava/lang/Throwable;
    if-eqz v1, :cond_20

    if-ne v1, p1, :cond_e

    goto :goto_20

    .line 282
    :cond_e
    :goto_e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 284
    .local v2, "cause":Ljava/lang/Throwable;
    if-eqz v2, :cond_1f

    if-ne v2, v1, :cond_1a

    goto :goto_1f

    .line 287
    :cond_1a
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 289
    .end local v2    # "cause":Ljava/lang/Throwable;
    goto :goto_e

    .line 285
    .restart local v2    # "cause":Ljava/lang/Throwable;
    :cond_1f
    :goto_1f
    return-object v0

    .line 279
    .end local v2    # "cause":Ljava/lang/Throwable;
    :cond_20
    :goto_20
    return-object v0
.end method

.method private getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 300
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 301
    .local v0, "root":Ljava/lang/Throwable;
    if-eqz v0, :cond_18

    if-ne v0, p1, :cond_9

    goto :goto_18

    .line 305
    :cond_9
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 306
    .local v1, "cause":Ljava/lang/Throwable;
    if-eqz v1, :cond_17

    if-ne v1, v0, :cond_12

    goto :goto_17

    .line 309
    :cond_12
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 310
    .end local v1    # "cause":Ljava/lang/Throwable;
    goto :goto_9

    .line 307
    .restart local v1    # "cause":Ljava/lang/Throwable;
    :cond_17
    :goto_17
    return-object v0

    .line 302
    .end local v1    # "cause":Ljava/lang/Throwable;
    :cond_18
    :goto_18
    return-object p1
.end method

.method private printStackTrace(Lcom/tds/common/reactor/exceptions/CompositeException$PrintStreamOrWriter;)V
    .registers 9
    .param p1, "s"    # Lcom/tds/common/reactor/exceptions/CompositeException$PrintStreamOrWriter;

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 192
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {p0}, Lcom/tds/common/reactor/exceptions/CompositeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v3, :cond_2a

    aget-object v5, v1, v4

    .line 194
    .local v5, "myStackElement":Ljava/lang/StackTraceElement;
    const-string v6, "\tat "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    .end local v5    # "myStackElement":Ljava/lang/StackTraceElement;
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 196
    :cond_2a
    const/4 v1, 0x1

    .line 197
    .local v1, "i":I
    iget-object v2, p0, Lcom/tds/common/reactor/exceptions/CompositeException;->exceptions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    .line 198
    .local v3, "ex":Ljava/lang/Throwable;
    const-string v4, "  ComposedException "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " :\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v4, "\t"

    invoke-direct {p0, v0, v3, v4}, Lcom/tds/common/reactor/exceptions/CompositeException;->appendStackTrace(Ljava/lang/StringBuilder;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 200
    nop

    .end local v3    # "ex":Ljava/lang/Throwable;
    add-int/lit8 v1, v1, 0x1

    .line 201
    goto :goto_31

    .line 202
    :cond_55
    invoke-virtual {p1}, Lcom/tds/common/reactor/exceptions/CompositeException$PrintStreamOrWriter;->lock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 203
    :try_start_5a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/tds/common/reactor/exceptions/CompositeException$PrintStreamOrWriter;->println(Ljava/lang/Object;)V

    .line 204
    monitor-exit v2

    .line 205
    return-void

    .line 204
    :catchall_63
    move-exception v3

    monitor-exit v2
    :try_end_65
    .catchall {:try_start_5a .. :try_end_65} :catchall_63

    throw v3
.end method


# virtual methods
.method public declared-synchronized getCause()Ljava/lang/Throwable;
    .registers 11

    monitor-enter p0

    .line 119
    :try_start_1
    iget-object v0, p0, Lcom/tds/common/reactor/exceptions/CompositeException;->cause:Ljava/lang/Throwable;

    if-nez v0, :cond_61

    .line 121
    new-instance v0, Lcom/tds/common/reactor/exceptions/CompositeException$CompositeExceptionCausalChain;

    invoke-direct {v0}, Lcom/tds/common/reactor/exceptions/CompositeException$CompositeExceptionCausalChain;-><init>()V

    .line 122
    .local v0, "localCause":Lcom/tds/common/reactor/exceptions/CompositeException$CompositeExceptionCausalChain;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 124
    .local v1, "seenCauses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    move-object v2, v0

    .line 125
    .local v2, "chain":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/tds/common/reactor/exceptions/CompositeException;->exceptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    .line 126
    .local v4, "e":Ljava/lang/Throwable;
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 128
    goto :goto_16

    .line 130
    :cond_29
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-direct {p0, v4}, Lcom/tds/common/reactor/exceptions/CompositeException;->getListOfCauses(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v5

    .line 134
    .local v5, "listOfCauses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_34
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_54

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    .line 135
    .local v7, "child":Ljava/lang/Throwable;
    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 137
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Duplicate found in causal chain so cropping to prevent loop ..."

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object v4, v8

    .line 138
    goto :goto_34

    .line 140
    .end local p0    # "this":Lcom/tds/common/reactor/exceptions/CompositeException;
    :cond_4f
    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_65

    .line 141
    nop

    .end local v7    # "child":Ljava/lang/Throwable;
    goto :goto_34

    .line 145
    :cond_54
    :try_start_54
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    .line 150
    goto :goto_59

    .line 146
    :catchall_58
    move-exception v6

    .line 151
    :goto_59
    :try_start_59
    invoke-direct {p0, v2}, Lcom/tds/common/reactor/exceptions/CompositeException;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    move-object v2, v6

    .line 152
    .end local v4    # "e":Ljava/lang/Throwable;
    .end local v5    # "listOfCauses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    goto :goto_16

    .line 153
    :cond_5f
    iput-object v0, p0, Lcom/tds/common/reactor/exceptions/CompositeException;->cause:Ljava/lang/Throwable;

    .line 155
    .end local v0    # "localCause":Lcom/tds/common/reactor/exceptions/CompositeException$CompositeExceptionCausalChain;
    .end local v1    # "seenCauses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    .end local v2    # "chain":Ljava/lang/Throwable;
    :cond_61
    iget-object v0, p0, Lcom/tds/common/reactor/exceptions/CompositeException;->cause:Ljava/lang/Throwable;
    :try_end_63
    .catchall {:try_start_59 .. :try_end_63} :catchall_65

    monitor-exit p0

    return-object v0

    .line 118
    :catchall_65
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getExceptions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/tds/common/reactor/exceptions/CompositeException;->exceptions:Ljava/util/List;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/tds/common/reactor/exceptions/CompositeException;->message:Ljava/lang/String;

    return-object v0
.end method

.method public printStackTrace()V
    .registers 2

    .line 170
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lcom/tds/common/reactor/exceptions/CompositeException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 171
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .registers 3
    .param p1, "s"    # Ljava/io/PrintStream;

    .line 175
    new-instance v0, Lcom/tds/common/reactor/exceptions/CompositeException$WrappedPrintStream;

    invoke-direct {v0, p1}, Lcom/tds/common/reactor/exceptions/CompositeException$WrappedPrintStream;-><init>(Ljava/io/PrintStream;)V

    invoke-direct {p0, v0}, Lcom/tds/common/reactor/exceptions/CompositeException;->printStackTrace(Lcom/tds/common/reactor/exceptions/CompositeException$PrintStreamOrWriter;)V

    .line 176
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "s"    # Ljava/io/PrintWriter;

    .line 180
    new-instance v0, Lcom/tds/common/reactor/exceptions/CompositeException$WrappedPrintWriter;

    invoke-direct {v0, p1}, Lcom/tds/common/reactor/exceptions/CompositeException$WrappedPrintWriter;-><init>(Ljava/io/PrintWriter;)V

    invoke-direct {p0, v0}, Lcom/tds/common/reactor/exceptions/CompositeException;->printStackTrace(Lcom/tds/common/reactor/exceptions/CompositeException$PrintStreamOrWriter;)V

    .line 181
    return-void
.end method
