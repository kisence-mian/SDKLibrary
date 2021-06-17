.class public abstract Lcom/tapjoy/internal/kc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/kh;


# static fields
.field private static final a:Ljava/util/logging/Logger;


# instance fields
.field private final b:Lcom/tapjoy/internal/kh;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const-class v0, Lcom/tapjoy/internal/kc;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/kc;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/tapjoy/internal/kc$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/kc$1;-><init>(Lcom/tapjoy/internal/kc;)V

    iput-object v0, p0, Lcom/tapjoy/internal/kc;->b:Lcom/tapjoy/internal/kh;

    return-void
.end method

.method static synthetic g()Ljava/util/logging/Logger;
    .registers 1

    .line 36
    sget-object v0, Lcom/tapjoy/internal/kc;->a:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .registers 1

    .line 109
    return-void
.end method

.method protected b()V
    .registers 1

    .line 82
    return-void
.end method

.method protected c()V
    .registers 1

    .line 104
    return-void
.end method

.method protected abstract d()V
.end method

.method public final e()Lcom/tapjoy/internal/kg;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tapjoy/internal/kg<",
            "Lcom/tapjoy/internal/kh$a;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/tapjoy/internal/kc;->b:Lcom/tapjoy/internal/kh;

    invoke-interface {v0}, Lcom/tapjoy/internal/kh;->e()Lcom/tapjoy/internal/kg;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/tapjoy/internal/kh$a;
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/tapjoy/internal/kc;->b:Lcom/tapjoy/internal/kh;

    invoke-interface {v0}, Lcom/tapjoy/internal/kh;->f()Lcom/tapjoy/internal/kh$a;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1170
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/kc;->f()Lcom/tapjoy/internal/kh$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
