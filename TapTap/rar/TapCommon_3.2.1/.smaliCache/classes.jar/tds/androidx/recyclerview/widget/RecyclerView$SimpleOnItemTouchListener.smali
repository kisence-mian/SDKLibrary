.class public Ltds/androidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ltds/androidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnItemTouchListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Ltds/androidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "rv"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .line 10904
    const/4 v0, 0x0

    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .registers 2
    .param p1, "disallowIntercept"    # Z

    .line 10913
    return-void
.end method

.method public onTouchEvent(Ltds/androidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "rv"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .line 10909
    return-void
.end method
