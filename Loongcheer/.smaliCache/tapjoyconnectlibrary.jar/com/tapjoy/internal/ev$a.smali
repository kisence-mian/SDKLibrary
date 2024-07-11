.class public final Lcom/tapjoy/internal/ev$a;
.super Lcom/tapjoy/internal/ei$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ei$a<",
        "Lcom/tapjoy/internal/ev;",
        "Lcom/tapjoy/internal/ev$a;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 140
    invoke-direct {p0}, Lcom/tapjoy/internal/ei$a;-><init>()V

    .line 141
    return-void
.end method


# virtual methods
.method public final b()Lcom/tapjoy/internal/ev;
    .registers 9

    .line 170
    new-instance v7, Lcom/tapjoy/internal/ev;

    iget-object v1, p0, Lcom/tapjoy/internal/ev$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/internal/ev$a;->d:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/tapjoy/internal/ev$a;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/tapjoy/internal/ev$a;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/tapjoy/internal/ev$a;->g:Ljava/lang/String;

    invoke-super {p0}, Lcom/tapjoy/internal/ei$a;->a()Lcom/tapjoy/internal/iw;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/tapjoy/internal/ev;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/iw;)V

    return-object v7
.end method
