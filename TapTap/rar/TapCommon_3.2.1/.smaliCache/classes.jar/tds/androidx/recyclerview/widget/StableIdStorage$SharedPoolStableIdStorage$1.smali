.class Ltds/androidx/recyclerview/widget/StableIdStorage$SharedPoolStableIdStorage$1;
.super Ljava/lang/Object;
.source "StableIdStorage.java"

# interfaces
.implements Ltds/androidx/recyclerview/widget/StableIdStorage$StableIdLookup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/StableIdStorage$SharedPoolStableIdStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltds/androidx/recyclerview/widget/StableIdStorage$SharedPoolStableIdStorage;


# direct methods
.method constructor <init>(Ltds/androidx/recyclerview/widget/StableIdStorage$SharedPoolStableIdStorage;)V
    .registers 2
    .param p1, "this$0"    # Ltds/androidx/recyclerview/widget/StableIdStorage$SharedPoolStableIdStorage;

    .line 60
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/StableIdStorage$SharedPoolStableIdStorage$1;->this$0:Ltds/androidx/recyclerview/widget/StableIdStorage$SharedPoolStableIdStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public localToGlobal(J)J
    .registers 3
    .param p1, "localId"    # J

    .line 63
    return-wide p1
.end method
