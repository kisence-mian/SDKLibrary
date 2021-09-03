.class public final Lcom/tds/common/reactor/exceptions/OnErrorThrowable;
.super Ljava/lang/RuntimeException;
.source "OnErrorThrowable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/reactor/exceptions/OnErrorThrowable$OnNextValue;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7e77a2d646dfd3eL


# instance fields
.field private final hasValue:Z

.field private final value:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tds/common/reactor/exceptions/OnErrorThrowable;->hasValue:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tds/common/reactor/exceptions/OnErrorThrowable;->value:Ljava/lang/Object;

    .line 41
    return-void
.end method

.method private constructor <init>(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .registers 5
    .param p1, "exception"    # Ljava/lang/Throwable;
    .param p2, "value"    # Ljava/lang/Object;

    .line 44
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/reactor/exceptions/OnErrorThrowable;->hasValue:Z

    .line 47
    instance-of v0, p2, Ljava/io/Serializable;

    if-eqz v0, :cond_c

    .line 48
    move-object v0, p2

    .local v0, "v":Ljava/lang/Object;
    goto :goto_17

    .line 51
    .end local v0    # "v":Ljava/lang/Object;
    :cond_c
    :try_start_c
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_11

    .line 54
    .restart local v0    # "v":Ljava/lang/Object;
    goto :goto_17

    .line 52
    .end local v0    # "v":Ljava/lang/Object;
    :catchall_11
    move-exception v0

    .line 53
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 56
    .local v0, "v":Ljava/lang/Object;
    :goto_17
    iput-object v0, p0, Lcom/tds/common/reactor/exceptions/OnErrorThrowable;->value:Ljava/lang/Object;

    .line 57
    return-void
.end method

.method public static addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;
    .registers 4
    .param p0, "e"    # Ljava/lang/Throwable;
    .param p1, "value"    # Ljava/lang/Object;

    .line 108
    if-nez p0, :cond_8

    .line 109
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    move-object p0, v0

    .line 111
    :cond_8
    invoke-static {p0}, Lcom/tds/common/reactor/exceptions/Exceptions;->getFinalCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 112
    .local v0, "lastCause":Ljava/lang/Throwable;
    instance-of v1, v0, Lcom/tds/common/reactor/exceptions/OnErrorThrowable$OnNextValue;

    if-eqz v1, :cond_1a

    .line 114
    move-object v1, v0

    check-cast v1, Lcom/tds/common/reactor/exceptions/OnErrorThrowable$OnNextValue;

    invoke-virtual {v1}, Lcom/tds/common/reactor/exceptions/OnErrorThrowable$OnNextValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1a

    .line 116
    return-object p0

    .line 119
    :cond_1a
    new-instance v1, Lcom/tds/common/reactor/exceptions/OnErrorThrowable$OnNextValue;

    invoke-direct {v1, p1}, Lcom/tds/common/reactor/exceptions/OnErrorThrowable$OnNextValue;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v1}, Lcom/tds/common/reactor/exceptions/Exceptions;->addCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 120
    return-object p0
.end method

.method public static from(Ljava/lang/Throwable;)Lcom/tds/common/reactor/exceptions/OnErrorThrowable;
    .registers 4
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 86
    if-nez p0, :cond_8

    .line 87
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    move-object p0, v0

    .line 89
    :cond_8
    invoke-static {p0}, Lcom/tds/common/reactor/exceptions/Exceptions;->getFinalCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 90
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v1, v0, Lcom/tds/common/reactor/exceptions/OnErrorThrowable$OnNextValue;

    if-eqz v1, :cond_1d

    .line 91
    new-instance v1, Lcom/tds/common/reactor/exceptions/OnErrorThrowable;

    move-object v2, v0

    check-cast v2, Lcom/tds/common/reactor/exceptions/OnErrorThrowable$OnNextValue;

    invoke-virtual {v2}, Lcom/tds/common/reactor/exceptions/OnErrorThrowable$OnNextValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/tds/common/reactor/exceptions/OnErrorThrowable;-><init>(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1

    .line 93
    :cond_1d
    new-instance v1, Lcom/tds/common/reactor/exceptions/OnErrorThrowable;

    invoke-direct {v1, p0}, Lcom/tds/common/reactor/exceptions/OnErrorThrowable;-><init>(Ljava/lang/Throwable;)V

    return-object v1
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/tds/common/reactor/exceptions/OnErrorThrowable;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public isValueNull()Z
    .registers 2

    .line 75
    iget-boolean v0, p0, Lcom/tds/common/reactor/exceptions/OnErrorThrowable;->hasValue:Z

    return v0
.end method
