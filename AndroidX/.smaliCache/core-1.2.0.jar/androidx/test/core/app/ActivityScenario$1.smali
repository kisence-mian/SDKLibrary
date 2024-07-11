.class Landroidx/test/core/app/ActivityScenario$1;
.super Ljava/lang/Object;
.source "ActivityScenario.java"

# interfaces
.implements Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/core/app/ActivityScenario;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/core/app/ActivityScenario;


# direct methods
.method constructor <init>(Landroidx/test/core/app/ActivityScenario;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/test/core/app/ActivityScenario;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 318
    .local p0, "this":Landroidx/test/core/app/ActivityScenario$1;, "Landroidx/test/core/app/ActivityScenario$1;"
    iput-object p1, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityLifecycleChanged(Landroid/app/Activity;Landroidx/test/runner/lifecycle/Stage;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "stage"    # Landroidx/test/runner/lifecycle/Stage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "stage"
        }
    .end annotation

    .line 321
    .local p0, "this":Landroidx/test/core/app/ActivityScenario$1;, "Landroidx/test/core/app/ActivityScenario$1;"
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    # getter for: Landroidx/test/core/app/ActivityScenario;->startActivityIntent:Landroid/content/Intent;
    invoke-static {v0}, Landroidx/test/core/app/ActivityScenario;->access$000(Landroidx/test/core/app/ActivityScenario;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 322
    return-void

    .line 324
    :cond_11
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    # getter for: Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Landroidx/test/core/app/ActivityScenario;->access$100(Landroidx/test/core/app/ActivityScenario;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 326
    :try_start_1a
    sget-object v0, Landroidx/test/core/app/ActivityScenario$2;->$SwitchMap$androidx$test$runner$lifecycle$Stage:[I

    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    # getter for: Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;
    invoke-static {v1}, Landroidx/test/core/app/ActivityScenario;->access$200(Landroidx/test/core/app/ActivityScenario;)Landroidx/test/runner/lifecycle/Stage;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/test/runner/lifecycle/Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_7c

    .line 343
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    goto :goto_3c

    .line 332
    :pswitch_2e
    sget-object v0, Landroidx/test/runner/lifecycle/Stage;->CREATED:Landroidx/test/runner/lifecycle/Stage;
    :try_end_30
    .catchall {:try_start_1a .. :try_end_30} :catchall_71

    if-eq p2, v0, :cond_4c

    .line 357
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    # getter for: Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Landroidx/test/core/app/ActivityScenario;->access$100(Landroidx/test/core/app/ActivityScenario;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 333
    return-void

    .line 343
    :goto_3c
    :try_start_3c
    # getter for: Landroidx/test/core/app/ActivityScenario;->currentActivity:Landroid/app/Activity;
    invoke-static {v0}, Landroidx/test/core/app/ActivityScenario;->access$300(Landroidx/test/core/app/ActivityScenario;)Landroid/app/Activity;

    move-result-object v0
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_71

    if-eq v0, p1, :cond_4c

    .line 357
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    # getter for: Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Landroidx/test/core/app/ActivityScenario;->access$100(Landroidx/test/core/app/ActivityScenario;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 344
    return-void

    .line 352
    :cond_4c
    :try_start_4c
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    # setter for: Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;
    invoke-static {v0, p2}, Landroidx/test/core/app/ActivityScenario;->access$202(Landroidx/test/core/app/ActivityScenario;Landroidx/test/runner/lifecycle/Stage;)Landroidx/test/runner/lifecycle/Stage;

    .line 353
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->DESTROYED:Landroidx/test/runner/lifecycle/Stage;

    if-eq p2, v1, :cond_59

    move-object v1, p1

    goto :goto_5a

    :cond_59
    const/4 v1, 0x0

    :goto_5a
    # setter for: Landroidx/test/core/app/ActivityScenario;->currentActivity:Landroid/app/Activity;
    invoke-static {v0, v1}, Landroidx/test/core/app/ActivityScenario;->access$302(Landroidx/test/core/app/ActivityScenario;Landroid/app/Activity;)Landroid/app/Activity;

    .line 355
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    # getter for: Landroidx/test/core/app/ActivityScenario;->stateChangedCondition:Ljava/util/concurrent/locks/Condition;
    invoke-static {v0}, Landroidx/test/core/app/ActivityScenario;->access$400(Landroidx/test/core/app/ActivityScenario;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_66
    .catchall {:try_start_4c .. :try_end_66} :catchall_71

    .line 357
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    # getter for: Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Landroidx/test/core/app/ActivityScenario;->access$100(Landroidx/test/core/app/ActivityScenario;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 358
    nop

    .line 359
    return-void

    .line 357
    :catchall_71
    move-exception v0

    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    # getter for: Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Landroidx/test/core/app/ActivityScenario;->access$100(Landroidx/test/core/app/ActivityScenario;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2e
    .end packed-switch
.end method
