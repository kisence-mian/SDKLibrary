.class Lcom/tonyodev/fetch/FetchService$2;
.super Ljava/lang/Object;
.source "FetchService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tonyodev/fetch/FetchService;->processAction(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tonyodev/fetch/FetchService;

.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/tonyodev/fetch/FetchService;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tonyodev/fetch/FetchService;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    iput-object p2, p0, Lcom/tonyodev/fetch/FetchService$2;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 25

    .prologue
    .line 234
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    # getter for: Lcom/tonyodev/fetch/FetchService;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;
    invoke-static {v4}, Lcom/tonyodev/fetch/FetchService;->access$000(Lcom/tonyodev/fetch/FetchService;)Lcom/tonyodev/fetch/DatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tonyodev/fetch/DatabaseHelper;->clean()V

    .line 236
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonyodev/fetch/FetchService$2;->val$bundle:Landroid/os/Bundle;

    const-string v20, "com.tonyodev.fetch.extra_id"

    const-wide/16 v22, -0x1

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v4, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 238
    .local v8, "id":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonyodev/fetch/FetchService$2;->val$bundle:Landroid/os/Bundle;

    const-string v20, "com.tonyodev.fetch.action_type"

    const/16 v21, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    packed-switch v4, :pswitch_data_18e

    .line 319
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    # invokes: Lcom/tonyodev/fetch/FetchService;->startDownload()V
    invoke-static {v4}, Lcom/tonyodev/fetch/FetchService;->access$700(Lcom/tonyodev/fetch/FetchService;)V

    .line 323
    :goto_35
    return-void

    .line 241
    :pswitch_36
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    # invokes: Lcom/tonyodev/fetch/FetchService;->pause(J)V
    invoke-static {v4, v8, v9}, Lcom/tonyodev/fetch/FetchService;->access$100(Lcom/tonyodev/fetch/FetchService;J)V

    goto :goto_35

    .line 245
    :pswitch_3e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    # invokes: Lcom/tonyodev/fetch/FetchService;->remove(J)V
    invoke-static {v4, v8, v9}, Lcom/tonyodev/fetch/FetchService;->access$200(Lcom/tonyodev/fetch/FetchService;J)V

    goto :goto_35

    .line 249
    :pswitch_46
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    # invokes: Lcom/tonyodev/fetch/FetchService;->resume(J)V
    invoke-static {v4, v8, v9}, Lcom/tonyodev/fetch/FetchService;->access$300(Lcom/tonyodev/fetch/FetchService;J)V

    goto :goto_35

    .line 253
    :pswitch_4e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonyodev/fetch/FetchService$2;->val$bundle:Landroid/os/Bundle;

    const-string v20, "com.tonyodev.fetch.extra_url"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 254
    .local v19, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonyodev/fetch/FetchService$2;->val$bundle:Landroid/os/Bundle;

    const-string v20, "com.tonyodev.fetch.extra_file_path"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 255
    .local v12, "filePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonyodev/fetch/FetchService$2;->val$bundle:Landroid/os/Bundle;

    const-string v20, "com.tonyodev.fetch.extra_headers"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 256
    .local v13, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonyodev/fetch/FetchService$2;->val$bundle:Landroid/os/Bundle;

    const-string v20, "com.tonyodev.fetch.extra_priority"

    const/16 v21, 0x258

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 258
    .local v18, "priority":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    move-object/from16 v0, v19

    move/from16 v1, v18

    # invokes: Lcom/tonyodev/fetch/FetchService;->enqueue(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)V
    invoke-static {v4, v0, v12, v13, v1}, Lcom/tonyodev/fetch/FetchService;->access$400(Lcom/tonyodev/fetch/FetchService;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)V

    goto :goto_35

    .line 262
    .end local v12    # "filePath":Ljava/lang/String;
    .end local v13    # "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v18    # "priority":I
    .end local v19    # "url":Ljava/lang/String;
    :pswitch_8e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonyodev/fetch/FetchService$2;->val$bundle:Landroid/os/Bundle;

    const-string v20, "com.tonyodev.fetch.extra_network_id"

    const/16 v21, 0xc8

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 263
    .local v17, "network":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    move/from16 v0, v17

    # invokes: Lcom/tonyodev/fetch/FetchService;->setAllowedNetwork(I)V
    invoke-static {v4, v0}, Lcom/tonyodev/fetch/FetchService;->access$500(Lcom/tonyodev/fetch/FetchService;I)V

    goto :goto_35

    .line 267
    .end local v17    # "network":I
    :pswitch_a8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonyodev/fetch/FetchService$2;->val$bundle:Landroid/os/Bundle;

    const-string v20, "com.tonyodev.fetch.extra_logging_id"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 268
    .local v11, "enabled":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    # invokes: Lcom/tonyodev/fetch/FetchService;->setLoggingEnabled(Z)V
    invoke-static {v4, v11}, Lcom/tonyodev/fetch/FetchService;->access$600(Lcom/tonyodev/fetch/FetchService;Z)V

    goto/16 :goto_35

    .line 272
    .end local v11    # "enabled":Z
    :pswitch_c1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    # invokes: Lcom/tonyodev/fetch/FetchService;->startDownload()V
    invoke-static {v4}, Lcom/tonyodev/fetch/FetchService;->access$700(Lcom/tonyodev/fetch/FetchService;)V

    goto/16 :goto_35

    .line 276
    :pswitch_ca
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonyodev/fetch/FetchService$2;->val$bundle:Landroid/os/Bundle;

    const-string v20, "com.tonyodev.fetch.extra_query_id"

    const-wide/16 v22, -0x1

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v4, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 277
    .local v6, "queryId":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonyodev/fetch/FetchService$2;->val$bundle:Landroid/os/Bundle;

    const-string v20, "com.tonyodev.fetch.extra_query_type"

    const/16 v21, 0x1e1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 278
    .local v5, "queryType":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonyodev/fetch/FetchService$2;->val$bundle:Landroid/os/Bundle;

    const-string v20, "com.tonyodev.fetch.extra_status"

    const/16 v21, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 279
    .local v10, "status":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    # invokes: Lcom/tonyodev/fetch/FetchService;->query(IJJI)V
    invoke-static/range {v4 .. v10}, Lcom/tonyodev/fetch/FetchService;->access$800(Lcom/tonyodev/fetch/FetchService;IJJI)V

    goto/16 :goto_35

    .line 283
    .end local v5    # "queryType":I
    .end local v6    # "queryId":J
    .end local v10    # "status":I
    :pswitch_103
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonyodev/fetch/FetchService$2;->val$bundle:Landroid/os/Bundle;

    const-string v20, "com.tonyodev.fetch.extra_priority"

    const/16 v21, 0x258

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 284
    .restart local v18    # "priority":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    move/from16 v0, v18

    # invokes: Lcom/tonyodev/fetch/FetchService;->setRequestPriority(JI)V
    invoke-static {v4, v8, v9, v0}, Lcom/tonyodev/fetch/FetchService;->access$900(Lcom/tonyodev/fetch/FetchService;JI)V

    goto/16 :goto_35

    .line 288
    .end local v18    # "priority":I
    :pswitch_11e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    # invokes: Lcom/tonyodev/fetch/FetchService;->retry(J)V
    invoke-static {v4, v8, v9}, Lcom/tonyodev/fetch/FetchService;->access$1000(Lcom/tonyodev/fetch/FetchService;J)V

    goto/16 :goto_35

    .line 292
    :pswitch_127
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    # invokes: Lcom/tonyodev/fetch/FetchService;->removeAll()V
    invoke-static {v4}, Lcom/tonyodev/fetch/FetchService;->access$1100(Lcom/tonyodev/fetch/FetchService;)V

    goto/16 :goto_35

    .line 296
    :pswitch_130
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonyodev/fetch/FetchService$2;->val$bundle:Landroid/os/Bundle;

    const-string v20, "com.tonyodev.fetch.extra_concurrent_download_limit"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 297
    .local v16, "limit":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    move/from16 v0, v16

    # invokes: Lcom/tonyodev/fetch/FetchService;->setDownloadsLimit(I)V
    invoke-static {v4, v0}, Lcom/tonyodev/fetch/FetchService;->access$1200(Lcom/tonyodev/fetch/FetchService;I)V

    goto/16 :goto_35

    .line 301
    .end local v16    # "limit":I
    :pswitch_14b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonyodev/fetch/FetchService$2;->val$bundle:Landroid/os/Bundle;

    const-string v20, "com.tonyodev.fetch.extra_on_update_interval"

    const-wide/16 v22, 0x7d0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v4, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 302
    .local v14, "interval":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    # invokes: Lcom/tonyodev/fetch/FetchService;->setOnUpdateInterval(J)V
    invoke-static {v4, v14, v15}, Lcom/tonyodev/fetch/FetchService;->access$1300(Lcom/tonyodev/fetch/FetchService;J)V

    goto/16 :goto_35

    .line 306
    .end local v14    # "interval":J
    :pswitch_164
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonyodev/fetch/FetchService$2;->val$bundle:Landroid/os/Bundle;

    const-string v20, "com.tonyodev.fetch.extra_url"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 307
    .restart local v19    # "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    move-object/from16 v0, v19

    # invokes: Lcom/tonyodev/fetch/FetchService;->updateRequestUrl(JLjava/lang/String;)V
    invoke-static {v4, v8, v9, v0}, Lcom/tonyodev/fetch/FetchService;->access$1400(Lcom/tonyodev/fetch/FetchService;JLjava/lang/String;)V

    goto/16 :goto_35

    .line 311
    .end local v19    # "url":Ljava/lang/String;
    :pswitch_17b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    # invokes: Lcom/tonyodev/fetch/FetchService;->removeRequest(J)V
    invoke-static {v4, v8, v9}, Lcom/tonyodev/fetch/FetchService;->access$1500(Lcom/tonyodev/fetch/FetchService;J)V

    goto/16 :goto_35

    .line 315
    :pswitch_184
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tonyodev/fetch/FetchService$2;->this$0:Lcom/tonyodev/fetch/FetchService;

    # invokes: Lcom/tonyodev/fetch/FetchService;->removeRequestAll()V
    invoke-static {v4}, Lcom/tonyodev/fetch/FetchService;->access$1600(Lcom/tonyodev/fetch/FetchService;)V

    goto/16 :goto_35

    .line 238
    nop

    :pswitch_data_18e
    .packed-switch 0x136
        :pswitch_4e
        :pswitch_36
        :pswitch_46
        :pswitch_3e
        :pswitch_8e
        :pswitch_c1
        :pswitch_ca
        :pswitch_103
        :pswitch_11e
        :pswitch_127
        :pswitch_a8
        :pswitch_130
        :pswitch_164
        :pswitch_14b
        :pswitch_17b
        :pswitch_184
    .end packed-switch
.end method
