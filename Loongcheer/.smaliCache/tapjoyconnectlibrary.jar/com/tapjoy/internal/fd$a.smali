.class public final Lcom/tapjoy/internal/fd$a;
.super Lcom/tapjoy/internal/ei$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ei$a<",
        "Lcom/tapjoy/internal/fd;",
        "Lcom/tapjoy/internal/fd$a;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 109
    invoke-direct {p0}, Lcom/tapjoy/internal/ei$a;-><init>()V

    .line 110
    return-void
.end method


# virtual methods
.method public final b()Lcom/tapjoy/internal/fd;
    .registers 6

    .line 129
    new-instance v0, Lcom/tapjoy/internal/fd;

    iget-object v1, p0, Lcom/tapjoy/internal/fd$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/internal/fd$a;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/tapjoy/internal/fd$a;->e:Ljava/lang/String;

    invoke-super {p0}, Lcom/tapjoy/internal/ei$a;->a()Lcom/tapjoy/internal/iw;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tapjoy/internal/fd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/iw;)V

    return-object v0
.end method
