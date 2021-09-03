.class Ltds/androidx/viewpager/ViewPager$3;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/viewpager/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltds/androidx/viewpager/ViewPager;


# direct methods
.method constructor <init>(Ltds/androidx/viewpager/ViewPager;)V
    .registers 2
    .param p1, "this$0"    # Ltds/androidx/viewpager/ViewPager;

    .line 244
    iput-object p1, p0, Ltds/androidx/viewpager/ViewPager$3;->this$0:Ltds/androidx/viewpager/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 247
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager$3;->this$0:Ltds/androidx/viewpager/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltds/androidx/viewpager/ViewPager;->setScrollState(I)V

    .line 248
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager$3;->this$0:Ltds/androidx/viewpager/ViewPager;

    invoke-virtual {v0}, Ltds/androidx/viewpager/ViewPager;->populate()V

    .line 249
    return-void
.end method
