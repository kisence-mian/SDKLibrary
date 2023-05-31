.class public Lcom/tds/common/reactor/exceptions/OnErrorThrowable$OnNextValue;
.super Ljava/lang/RuntimeException;
.source "OnErrorThrowable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/exceptions/OnErrorThrowable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnNextValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/reactor/exceptions/OnErrorThrowable$OnNextValue$Primitives;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2ff0b792f8336acbL


# instance fields
.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnError while emitting onNext value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/tds/common/reactor/exceptions/OnErrorThrowable$OnNextValue;->renderValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 164
    instance-of v0, p1, Ljava/io/Serializable;

    if-eqz v0, :cond_20

    .line 165
    move-object v0, p1

    .local v0, "v":Ljava/lang/Object;
    goto :goto_2b

    .line 168
    .end local v0    # "v":Ljava/lang/Object;
    :cond_20
    :try_start_20
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_25

    .line 171
    .restart local v0    # "v":Ljava/lang/Object;
    goto :goto_2b

    .line 169
    .end local v0    # "v":Ljava/lang/Object;
    :catchall_25
    move-exception v0

    .line 170
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 173
    .local v0, "v":Ljava/lang/Object;
    :goto_2b
    iput-object v0, p0, Lcom/tds/common/reactor/exceptions/OnErrorThrowable$OnNextValue;->value:Ljava/lang/Object;

    .line 174
    return-void
.end method

.method static renderValue(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p0, "value"    # Ljava/lang/Object;

    .line 200
    if-nez p0, :cond_5

    .line 201
    const-string v0, "null"

    return-object v0

    .line 203
    :cond_5
    sget-object v0, Lcom/tds/common/reactor/exceptions/OnErrorThrowable$OnNextValue$Primitives;->INSTANCE:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 206
    :cond_16
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 207
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 209
    :cond_1e
    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_2a

    .line 210
    move-object v0, p0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 214
    :cond_2a
    invoke-static {}, Lcom/tds/common/reactor/plugins/RxJavaPlugins;->getInstance()Lcom/tds/common/reactor/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/common/reactor/plugins/RxJavaPlugins;->getErrorHandler()Lcom/tds/common/reactor/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tds/common/reactor/plugins/RxJavaErrorHandler;->handleOnNextValueRendering(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "pluggedRendering":Ljava/lang/String;
    if-eqz v0, :cond_39

    .line 216
    return-object v0

    .line 219
    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/tds/common/reactor/exceptions/OnErrorThrowable$OnNextValue;->value:Ljava/lang/Object;

    return-object v0
.end method
