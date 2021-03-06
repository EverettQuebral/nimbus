//
// Copyright 2011 Jeff Verkoeyen
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

#import "UISearchBar+NIStyleable.h"

#import "UIView+NIStyleable.h"
#import "NICSSRuleset.h"
#import "NimbusCore.h"

#if !defined(__has_feature) || !__has_feature(objc_arc)
#error "Nimbus requires ARC support."
#endif

NI_FIX_CATEGORY_BUG(UISearchBar_NIStyleable)

///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
@implementation UISearchBar (NIStyleable)


///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)applySearchBarStyleWithRuleSet:(NICSSRuleset *)ruleSet inDOM:(NIDOM*) dom {
  if ([ruleSet hasTintColor]) { self.tintColor = ruleSet.tintColor; }
}

///////////////////////////////////////////////////////////////////////////////////////////////////
-(void)applyViewStyleWithRuleSet:(NICSSRuleset *)ruleSet inDOM:(NIDOM *)dom {
    [self applyViewStyleWithRuleSet:ruleSet inDOM:dom];
    [self applySearchBarStyleWithRuleSet:ruleSet inDOM:dom];
}

///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)applyStyleWithRuleSet:(NICSSRuleset *)ruleSet {
}


@end
