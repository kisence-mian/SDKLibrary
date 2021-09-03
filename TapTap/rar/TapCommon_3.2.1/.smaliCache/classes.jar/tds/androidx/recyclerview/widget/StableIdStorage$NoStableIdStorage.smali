.class public Ltds/androidx/recyclerview/widget/StableIdStorage$NoStableIdStorage;
.super Ljava/lang/Object;
.source "StableIdStorage.java"

# interfaces
.implements Ltds/androidx/recyclerview/widget/StableIdStorage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/StableIdStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoStableIdStorage"
.end annotation


# instance fields
.field private final mNoIdLookup:Ltds/androidx/recyclerview/widget/StableIdStorage$StableIdLookup;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ltds/androidx/recyclerview/widget/StableIdStorage$NoStableIdStorage$1;

    invoke-direct {v0, p0}, Ltds/androidx/recyclerview/widget/StableIdStorage$NoStableIdStorage$1;-><init>(Ltds/androidx/recyclerview/widget/StableIdStorage$NoStableIdStorage;)V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/StableIdStorage$NoStableIdStorage;->mNoIdLookup:Ltds/androidx/recyclerview/widget/StableIdStorage$StableIdLookup;

    return-void
.end method


# virtual methods
.method public createStableIdLookup()Ltds/androidx/recyclerview/widget/StableIdStorage$StableIdLookup;
    .registers 2

    .line 52
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/StableIdStorage$NoStableIdStorage;->mNoIdLookup:Ltds/androidx/recyclerview/widget/StableIdStorage$StableIdLookup;

    return-object v0
.end method
