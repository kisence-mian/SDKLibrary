.class public Lcom/tds/common/tracker/TdsTrackerManager$Holder;
.super Ljava/lang/Object;
.source "TdsTrackerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/tracker/TdsTrackerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field public static INSTANCE:Lcom/tds/common/tracker/TdsTrackerManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Lcom/tds/common/tracker/TdsTrackerManager;

    invoke-direct {v0}, Lcom/tds/common/tracker/TdsTrackerManager;-><init>()V

    sput-object v0, Lcom/tds/common/tracker/TdsTrackerManager$Holder;->INSTANCE:Lcom/tds/common/tracker/TdsTrackerManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
