.class Lcom/tds/common/tracker/session/SessionIdManager$Holder;
.super Ljava/lang/Object;
.source "SessionIdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/tracker/session/SessionIdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Holder"
.end annotation


# static fields
.field static INSATNCE:Lcom/tds/common/tracker/session/SessionIdManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Lcom/tds/common/tracker/session/SessionIdManager;

    invoke-direct {v0}, Lcom/tds/common/tracker/session/SessionIdManager;-><init>()V

    sput-object v0, Lcom/tds/common/tracker/session/SessionIdManager$Holder;->INSATNCE:Lcom/tds/common/tracker/session/SessionIdManager;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
