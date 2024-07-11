.class public final Lcom/tapjoy/internal/fs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/tapjoy/internal/gb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/gb<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    new-instance v0, Lcom/tapjoy/internal/fs$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/fs$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/fs;->a:Lcom/tapjoy/internal/gb;

    return-void
.end method

.method public static a()V
    .registers 2

    .line 29
    sget-object v0, Lcom/tapjoy/internal/fs;->a:Lcom/tapjoy/internal/gb;

    .line 1034
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gb;->c(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method
