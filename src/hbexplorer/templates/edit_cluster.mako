##/**
## * Copyright 2007 The Apache Software Foundation
## *
## * Licensed to the Apache Software Foundation (ASF) under one
## * or more contributor license agreements.  See the NOTICE file
## * distributed with this work for additional information
## * regarding copyright ownership.  The ASF licenses this file
## * to you under the Apache License, Version 2.0 (the
## * "License"); you may not use this file except in compliance
## * with the License.  You may obtain a copy of the License at
## *
## *     http://www.apache.org/licenses/LICENSE-2.0
## *
## * Unless required by applicable law or agreed to in writing, software
## * distributed under the License is distributed on an "AS IS" BASIS,
## * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
## * See the License for the specific language governing permissions and
## * limitations under the License.
## */
<%namespace name="shared" file="shared_components.mako" />

  % if clusterid:
    ${shared.header('Edit Cluster Entry: ' + clusterid + ' -- HBase Clusters')}
  % else:
    ${shared.header('Create Cluster Entry -- HBase Clusters')}
  % endif

<div class="prompt_popup">
<form action="${action}" method="POST" enctype="multipart/form-data">
  <h4 class="ccs-hidden">
    % if clusterid:
      Edit Cluster Entry: ${clusterid}
    % else:
      Create Cluster Entry 
    % endif
  </h4>
  <dl>
    % for field in form:
    ${shared.render_field(field)}
    % endfor
  </dl>
  <input class="ccs-hidden" type="submit" value="Submit" />
</form>
</div>

##<div class="ccs-hidden">Go back to where you were: <a href="${next|u}">${next}</a>.</div>
    
${shared.footer()}
